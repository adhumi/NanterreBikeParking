import ArgumentParser
import Foundation
import Progress

@main
struct NanterreBikeParking: AsyncParsableCommand {
    @Argument(help: "The path to the CSV listing all Nanterre equipments (source: https://www.nanterre.fr/1522-les-equipements.htm)")
    var csvPath: String

    mutating func run() async throws {
        let equipmentService = try EquipmentService(path: csvPath)
                
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        
        var equipementsWithCartographicData: [Equipment] = []
        var bar = ProgressBar(count: equipmentService.equipments.count, configuration: [ProgressIndex(), ProgressBarLine(barLength: 60)])
        bar.next()
        
        var countWithoutBikeParking: Int = 0
        
        for equipment in equipmentService.equipments {
            guard let request = RequestBuilder(equipment: equipment, radius: 100).request else { continue }
            
            let (data, _) = try await URLSession.shared.data(for: request)
            let overpassResponse = try decoder.decode(OverpassResponse.self, from: data)
            
            if overpassResponse.elements.count == 0 {
                countWithoutBikeParking += 1
            }

            let newEquipment = Equipment(identifier: equipment.identifier,
                                         type: equipment.type,
                                         subKind: equipment.subKind,
                                         name: equipment.name,
                                         address: equipment.address,
                                         district: equipment.district,
                                         latitude: equipment.latitude,
                                         longitude: equipment.longitude,
                                         bikeParkings: overpassResponse.elements)
            equipementsWithCartographicData.append(newEquipment)
                        
            try await Task.sleep(nanoseconds: 1_000_000_000)
            
            bar.next()
        }
        
        let markdownFormatter = MarkdownFormatter()
        let markdownTable = markdownFormatter.string(from: equipementsWithCartographicData)
        try markdownFormatter.apply(table: markdownTable, to: "README.md")
        
        let ratioWithoutParking = Double(countWithoutBikeParking) / Double(equipementsWithCartographicData.count)
        let webMapFormatter = WebMapFormatter()
        let html = webMapFormatter.htmlView(with: equipementsWithCartographicData, ratioWithoutParking: ratioWithoutParking)
        try webMapFormatter.writeToIndex(html: html)
    }
}

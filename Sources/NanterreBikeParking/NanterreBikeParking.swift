import ArgumentParser
import Foundation

@main
struct NanterreBikeParking: AsyncParsableCommand {
    @Argument(help: "The path to the CSV listing all Nanterre equipments (source: https://www.nanterre.fr/1522-les-equipements.htm)")
    var csvPath: String

    mutating func run() async throws {
        let equipmentService = try EquipmentService(path: csvPath)
                
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        for equipment in equipmentService.equipments {
            guard let request = RequestBuilder(equipment: equipment, radius: 100).request else { continue }
            
            let (data, _) = try await URLSession.shared.data(for: request)
            let overpassResponse = try decoder.decode(OverpassResponse.self, from: data)

            print("| \(equipment.name) | \(overpassResponse.elements.isEmpty ? "❌" : "✅") | \(overpassResponse.elements.bikeParkingsCapacity) places |")
            
            try await Task.sleep(nanoseconds: 1_000_000_000)
        }
    }
}

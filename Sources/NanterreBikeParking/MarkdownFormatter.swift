import Foundation

struct MarkdownFormatter {
    static let tableHeader = """
| Nom | Stationnement <100m | Nb places |
|---|---|---|
"""
    
    func string(from equipments: [Equipment]) -> String {
        var formattedEquipments = Self.tableHeader
        
        for equipment in equipments {
            let bikeParkings = equipment.bikeParkings ?? []
            formattedEquipments += "\n| \(equipment.name) | \(bikeParkings.isEmpty ? "❌" : "✅") | \(bikeParkings.bikeParkingsCapacity) places |"
        }
        
        return formattedEquipments
    }
    
    func apply(table: String, to readmeFilePath: String) throws {
        let url = URL(filePath: readmeFilePath)
        var readmeContent = try String(contentsOf: url, encoding: .utf8)
        let prefix: String = String(readmeContent.split(separator: Self.tableHeader).first ?? "")
        readmeContent = prefix + table
        try readmeContent.write(to: url, atomically: false, encoding: .utf8)
    }
}

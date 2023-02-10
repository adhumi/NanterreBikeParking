import Foundation
import SwiftCSV
import CoreLocation

class EquipmentService {
    var equipments: [Equipment] = []
    
    var path: String
    
    init(path: String) throws {
        self.path = path
        
        try load()
    }
    
    func load() throws {
        let csv: CSV = try CSV<Named>(url: URL(fileURLWithPath: path), encoding: .windowsCP1252)
        
        try csv.enumerateAsDict {
            guard let identifier = Int($0["iD_EQ"]!) else { return }
            guard let kind = Equipment.Kind(rawValue: $0["TYPE"]!) else { return }
            guard let subKind = $0["SS_TYPE"] else { return }
            guard let name = $0["LIBELLE_EQ"] else { return }
            guard let address = $0["ACCES"] else { return }
            guard let district = Equipment.District(rawValue: $0["QUARTIER"]!) else { return }
            guard let latitude = Double($0["Y_WGS84"]!) else { return }
            guard let longitude = Double($0["X_WGS84"]!) else { return }
            
            let equipment = Equipment(identifier: identifier,
                                      type: kind,
                                      subKind: subKind,
                                      name: name,
                                      address: address,
                                      district: district,
                                      latitude: latitude,
                                      longitude: longitude,
                                      bikeParkings: nil)

            self.equipments.append(equipment)
        }
        
        print("Working with \(equipments.count) equipments")
    }
}

struct Equipment: Codable {
    let identifier: Int // iD_EQ
    let type: Kind // TYPE
    let subKind: String // SS_TYPE
    let name: String // LIBELLE_EQ
    let address: String // ACCES
    let district: District // QUARTIER
    let latitude: Double // X_L93
    let longitude: Double // Y_L93
    let bikeParkings: [OSMElement]?
    
    enum Kind: String, Codable {
        case culte = "Culte"
        case culture = "Culture"
        case enseignement = "Enseignement"
        case technique = "Equipements Techniques Municipaux"
        case justice = "Justice"
        case loisirs = "Loisirs"
        case premiereEnfance = "Première Enfance"
        case sante = "Santé"
        case sports = "Sports"
        case sportsLoisirs = "Sports et Loisirs"
        case administratif = "Vie Administrative"
        case associatif = "Vie Associative"
        case pratique = "Vie Pratique"
        case social = "Vie Sociale"
    }
    
    enum District: String, Codable {
        case parcNord = "Parc Nord"
        case petitNanterre = "Petit Nanterre"
        case centre = "Centre"
        case montValerien = "Plateau - Mont-Valérien"
        case parcSud = "Parc Sud"
        case universite = "Université"
        case cheminIle = "Chemin de l'Ile"
        case boule = "La Boule - Champs Pierreux"
        case vieuxPont = "Vieux-Pont - Sainte-Geneviève"
        case republique = "République"
    }
}

struct OverpassResponse: Codable {
    let elements: [OSMElement]
}

struct OSMElement: Codable {
    let type: String
    let id: Int
    let lat: Double
    let lon: Double
    
    struct Metadata: Codable {
        let access: String
        let amenity: String
        let bicycle_parking: String
        let capacity: Int
        let covered: String
        let fee: String
        let `operator`: String
        let operatorType: String
    }
}

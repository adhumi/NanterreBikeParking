import Foundation
import CoreLocation

struct RequestBuilder {
    let latitude: Double
    let longitude: Double
    let radius: Int
    
    init(latitude: Double, longitude: Double, radius: Int = 50) {
        self.latitude = latitude
        self.longitude = longitude
        self.radius = radius
    }
    
    init(equipment: Equipment, radius: Int = 50) {
        self.latitude = equipment.latitude
        self.longitude = equipment.longitude
        self.radius = radius
    }
    
    private var dataParameter: String {
        return """
[out:json][timeout:25];
(
  node["bicycle_parking"](around:\(radius), \(latitude), \(longitude));
);

out body;
>;
out skel qt;
"""
    }
    
    private let baseURL: URL = URL(string: "https://overpass-api.de/api/interpreter")!
    
    var request: URLRequest? {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        components?.queryItems = [URLQueryItem(name: "data", value: dataParameter)]
        guard let url = components?.url else { return nil }
        return URLRequest(url: url)
    }
}

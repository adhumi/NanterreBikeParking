import Foundation

struct WebMapFormatter {
    func htmlView(with equipments: [Equipment]) -> String {
        var html = """
<html>
    <head>
        <title>Stationnement vélo à Nanterre</title>
        <script src='https://unpkg.com/maplibre-gl@latest/dist/maplibre-gl.js'></script>
        <link href='https://unpkg.com/maplibre-gl@latest/dist/maplibre-gl.css' rel='stylesheet' />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <style>
            body {
                padding: 0;
                margin: 0;
            }
            
            #map {
                width: 100%;
                height: 70%;
                margin-bottom: 4em;
            }

            .marker {
                width: 12px;
                height: 12px;
                background-size: contain;
                background-color: teal;
                cursor: pointer;
                border-radius: 50%;
            }
            
            footer {
                text-align: center;
                margin-top: 4em;
                margin-bottom: 2em;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">Stationnement vélo à Nanterre</a>
          </div>
        </nav>

        <div id='map'></div>

        <div class="container">
            <div class="row">
                <div class="col">
                    <h2>Nombre d'emplacements vélos par équipement</h2>
                    
                    <p>Cette page utilise <a href="https://www.nanterre.fr/1522-les-equipements.htm">les données rendues disponibles par la Ville de Nanterre</a> pour la liste des équipements et <a href="https://www.openstreetmap.org">OpenStreetMap</a> pour la position des emplacements de stationnement vélo. Elle affiche pour chaque équipement le nombre d'emplacements de stationnement vélo disponibles à moins de 100 mètres.</p>
                    
                    <table class="table table-hover">
                      <tbody>
"""
        for equipment in equipments {
            html += equipment.tableRow
        }
        
        html += """
                      </tbody>
                    </table>

                    <footer class="small">
                        Par Adrien Humilière pour <a href="https://www.larustinedenanterre.fr">La Rustine de Nanterre</a>
                    </footer>
                </div>
            </div>
        </div>

        <script>
            var map = new maplibregl.Map({
              container: 'map',
              style: 'https://api.maptiler.com/maps/dataviz/style.json?key=3qdhWBgaPJmzSaQA2gH1',
              center: [2.206357, 48.896574],
              zoom: 13,
              scrollZoom: false
            });
            map.addControl(new maplibregl.NavigationControl(), 'top-right');

"""
        
        for equipment in equipments {
            html += equipment.marker
        }
        
        html += """

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </body>
</html>
"""
        
        return html
    }
    
    func writeToIndex(html: String) throws {
        let url = URL(filePath: "index.html")
        try html.write(to: url, atomically: false, encoding: .utf8)
    }
}

extension Equipment {
    var capacityDescription: String {
        let capacity = bikeParkings?.bikeParkingsCapacity ?? 0
        
        if capacity == 0 {
            return "Aucun emplacement"
        } else if capacity == 1 {
            return "1 emplacement"
        } else {
            return "\(capacity) emplacements"
        }
    }
    
    var marker: String {
        return """
            
            var marker\(identifier) = document.createElement('div');
            marker\(identifier).className = 'marker';
            marker\(identifier).style.backgroundColor = "\((bikeParkings?.bikeParkingsCapacity ?? 0) == 0 ? "red" : "green")"
            
            new maplibregl.Marker(marker\(identifier), {})
                .setLngLat([\(longitude), \(latitude)])
                .setPopup(new maplibregl.Popup({ offset: 10, closeButton: false }).setHTML("<h6>\(name)</h6><p>\(capacityDescription) à proximité</p>"))
                .addTo(map);
"""
    }
    
    var tableRow: String {
        return """
                        <tr class="\((bikeParkings?.bikeParkingsCapacity ?? 0) == 0 ? "table-danger" : "")">
                          <th scope="row">\(name)</th>
                          <td>\(district.rawValue)</td>
                          <td>\(capacityDescription)</td>
                        </tr>
"""
    }
}

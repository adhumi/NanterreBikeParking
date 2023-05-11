# NanterreBikeParking

Objectif : référencer les équipements qui manquent de stationnement vélos (à moins de 100 mètres) sur la ville de Nanterre.

- La liste des équipements vient des [données fournies par la ville](https://www.nanterre.fr/1522-les-equipements.htm) 
- Les stationnements vélo correspondants viennent d'OpenStreetMap, via [Overpass Turbo](https://overpass-turbo.eu)

## Comment ça marche ?

Pour mettre à jour la liste des équipements (`README` et `index.html`)
1. Télécharger la liste des équipements au format CSV [sur le site de la ville de Nanterre](https://www.nanterre.fr/1522-les-equipements.htm)
2. Lancer `swift run NanterreBikeParking CHEMIN_VERS_LE_CSV`

## Résultat

| Nom | Stationnement <100m | Nb places |
|---|---|---|
| Cimetière ancien de Neuilly | ❌ | 0 places |
| Cimetière de La Garenne Colombes | ❌ | 0 places |
| Cimetière de Puteaux | ✅ | 10 places |
| Cimetière de la Maison Départementale | ❌ | 0 places |
| Cimetière du Centre | ❌ | 0 places |
| Cimetière paysager du Mont-Valérien | ❌ | 0 places |
| Crématorium | ❌ | 0 places |
| Funérarium | ❌ | 0 places |
| Cathédrale Sainte Geneviève | ✅ | 22 places |
| Chapelle Saint Joseph | ❌ | 0 places |
| Eglise Saint Paul | ✅ | 9 places |
| Eglise Sainte Catherine | ❌ | 0 places |
| Eglise Sainte Marie des Fontenelles | ❌ | 0 places |
| Evêché | ❌ | 0 places |
| Notre Dame de la Miséricorde | ❌ | 0 places |
| Centre Communautaire Juif | ✅ | 18 places |
| Mosquée Ibn Badis | ✅ | 32 places |
| Mosquée OkbaIbn Nafaa | ❌ | 0 places |
| Ateliers d'Arts Plastiques | ✅ | 32 places |
| Auditorium - Parc des Anciennes Mairies | ✅ | 6 places |
| Espace Pierre Reverdy | ✅ | 36 places |
| La Terrasse - Espace d'art de Nanterre | ✅ | 74 places |
| L’Agora - fabrique des futurs | ✅ | 6 places |
| Maison de la Musique - Conservatoire à Rayonnement Départemental (musique, danse et Théâtre) | ✅ | 24 places |
| Médiathèque Flora Tristan | ✅ | 39 places |
| Médiathèque Pierre et Marie Curie | ✅ | 24 places |
| Médiathèque des Fontenelles | ✅ | 10 places |
| Médiathèque du Petit Nanterre | ✅ | 28 places |
| Point lecture du Chemin de l’Ile | ✅ | 28 places |
| Cinéma Les Lumières | ✅ | 12 places |
| Espace Chevreul | ❌ | 0 places |
| La Forge | ✅ | 10 places |
| Le Cinéart | ✅ | 37 places |
| Maison Daniel Féry | ✅ | 14 places |
| Maison de la Musique - Salle de Spectacles | ✅ | 24 places |
| Salle des Congrès | ✅ | 24 places |
| Salle des Fêtes | ✅ | 37 places |
| Studio Jenny | ❌ | 0 places |
| Théatre Bernard Marie Koltès | ✅ | 36 places |
| Théâtre Nanterre-Amandiers | ✅ | 12 places |
| Collège André Doucet | ❌ | 0 places |
| Collège Evariste Galois | ❌ | 0 places |
| Collège Jean Perrin | ❌ | 0 places |
| Collège Les Chenevreux | ✅ | 14 places |
| Collège Paul Eluard | ❌ | 0 places |
| Collège République | ✅ | 10 places |
| Collège Victor Hugo | ✅ | 2 places |
| Ecole Elémentaire Abdelmalek Sayad | ✅ | 13 places |
| Ecole Elémentaire Anatole France | ✅ | 36 places |
| Ecole Elémentaire Balzac | ✅ | 10 places |
| Ecole Elémentaire Elsa Triolet | ❌ | 0 places |
| Ecole Elémentaire Henri Wallon | ❌ | 0 places |
| Ecole Elémentaire Jacques Decour | ❌ | 0 places |
| Ecole Elémentaire Jean de la Fontaine | ✅ | 6 places |
| Ecole Elémentaire Joliot Curie | ✅ | 8 places |
| Ecole Elémentaire Jules Ferry | ❌ | 0 places |
| Ecole Elémentaire Lucie Aubrac | ✅ | 14 places |
| Ecole Elémentaire Maxime Gorki | ✅ | 20 places |
| Ecole Elémentaire Miriam Makeba | ✅ | 46 places |
| Ecole Elémentaire Pablo Neruda | ✅ | 12 places |
| Ecole Elémentaire Pablo Picasso | ✅ | 10 places |
| Ecole Elémentaire Paul Langevin | ❌ | 0 places |
| Ecole Elémentaire Robespierre | ✅ | 14 places |
| Ecole Elémentaire Romain Rolland | ❌ | 0 places |
| Ecole Elémentaire Voltaire | ❌ | 0 places |
| Ecole Elémentaire des Pâquerettes | ✅ | 36 places |
| Ecole Elémentaire du Centre | ✅ | 14 places |
| Ecole Elémentaire du Général de Joinville | ❌ | 0 places |
| Ecole Maternelle Abdelmalek Sayad | ✅ | 21 places |
| Ecole Maternelle Anatole France | ✅ | 32 places |
| Ecole Maternelle Balzac | ✅ | 14 places |
| Ecole Maternelle Danielle Casanova | ❌ | 0 places |
| Ecole Maternelle Elsa Triolet | ❌ | 0 places |
| Ecole Maternelle Eugénie Cotton | ✅ | 20 places |
| Ecole Maternelle France Bloch | ❌ | 0 places |
| Ecole Maternelle Henri Wallon | ✅ | 4 places |
| Ecole Maternelle Jacques Decour | ❌ | 0 places |
| Ecole Maternelle Jacques Prévert | ❌ | 0 places |
| Ecole Maternelle Jean de la Fontaine | ❌ | 0 places |
| Ecole Maternelle Joliot Curie | ✅ | 8 places |
| Ecole Maternelle Jules Ferry | ❌ | 0 places |
| Ecole Maternelle Lucie Aubrac | ✅ | 68 places |
| Ecole Maternelle Maxime Gorki | ❌ | 0 places |
| Ecole Maternelle Miriam Makeba | ✅ | 46 places |
| Ecole Maternelle Pablo Neruda | ✅ | 12 places |
| Ecole Maternelle Pablo Picasso | ✅ | 10 places |
| Ecole Maternelle Paul Langevin | ❌ | 0 places |
| Ecole Maternelle Robespierre | ✅ | 22 places |
| Ecole Maternelle Romain Rolland | ❌ | 0 places |
| Ecole Maternelle Soufflot | ❌ | 0 places |
| Ecole Maternelle Victor Hugo | ✅ | 2 places |
| Ecole Maternelle des Pâquerettes | ✅ | 36 places |
| Ecole Maternelle du Général de Joinville | ❌ | 0 places |
| Ecole Maternelle du Moulin des Gibets | ❌ | 0 places |
| Ecole Privée Sainte-Geneviève | ✅ | 12 places |
| Institut Médico-Educatif Au fil de l'autre | ✅ | 16 places |
| Institut Médico-Educatif Balzac | ✅ | 14 places |
| Institut Médico-Educatif Fernand Oury | ❌ | 0 places |
| Local 2 APEINA (Association pour l'enfance inadaptée à Nanterre) | ✅ | 30 places |
| Ecole de danse de l'Opéra de Paris | ❌ | 0 places |
| Institut de formation en soins infirmiers (IFSI) | ❌ | 0 places |
| Université Paris Nanterre | ✅ | 46 places |
| AFPA Centre de formation | ✅ | 12 places |
| Centre d'enseignement supérieur et formation professionnelle (CESI) | ❌ | 0 places |
| Institut de Formation Professionnelle des métiers (IFPM) | ✅ | 10 places |
| Paris Beauty Academy | ❌ | 0 places |
| Lycée Joliot Curie | ✅ | 66 places |
| Lycée Professionnel Claude Chappe | ✅ | 16 places |
| Lycée Professionnel Louise Michel | ✅ | 6 places |
| Centre Horticole Municipal Félix Faure | ❌ | 0 places |
| Centre Technique Municipal | ✅ | 5 places |
| Centre Technique des Guilleraies | ❌ | 0 places |
| Cuisine Centrale UCPA | ❌ | 0 places |
| Régie des Espaces Verts | ❌ | 0 places |
| Régie des centres de vacances et centres de loisirs | ❌ | 0 places |
| Maison d'arrêt | ❌ | 0 places |
| Conseil des Prud'hommes | ✅ | 12 places |
| Tribunal de Grande Instance | ✅ | 74 places |
| Tribunal de Grande Instance (Extension) | ✅ | 12 places |
| Tribunal de commerce | ✅ | 12 places |
| Centre de loisirs maternel Abdelmalek Sayad | ✅ | 21 places |
| Centre de loisirs maternel Anatole France | ✅ | 12 places |
| Centre de loisirs maternel Arc en Ciel - Voltaire | ❌ | 0 places |
| Centre de loisirs maternel Balzac | ✅ | 10 places |
| Centre de loisirs maternel Cotton - Voltaire | ❌ | 0 places |
| Centre de loisirs maternel Danielle Casanova - Pavillon des Lilas | ❌ | 0 places |
| Centre de loisirs maternel Danielle Casanova - Pavillon des Potagers | ❌ | 0 places |
| Centre de loisirs maternel Elsa Triolet | ❌ | 0 places |
| Centre de loisirs maternel France Bloch | ❌ | 0 places |
| Centre de loisirs maternel Henri Wallon | ✅ | 20 places |
| Centre de loisirs maternel Jacques Decour | ❌ | 0 places |
| Centre de loisirs maternel Jacques Prévert | ❌ | 0 places |
| Centre de loisirs maternel Jean de la Fontaine | ✅ | 6 places |
| Centre de loisirs maternel Joliot Curie | ✅ | 8 places |
| Centre de loisirs maternel Jules Ferry | ❌ | 0 places |
| Centre de loisirs maternel Lucie Aubrac | ✅ | 68 places |
| Centre de loisirs maternel Maxime Gorki | ✅ | 10 places |
| Centre de loisirs maternel Miriam Makeba | ✅ | 46 places |
| Centre de loisirs maternel Pablo Néruda | ✅ | 12 places |
| Centre de loisirs maternel Pablo Picasso | ✅ | 10 places |
| Centre de loisirs maternel Paul Langevin | ❌ | 0 places |
| Centre de loisirs maternel Robespierre | ✅ | 16 places |
| Centre de loisirs maternel Romain Rolland | ❌ | 0 places |
| Centre de loisirs maternel Rouget de Lisle | ❌ | 0 places |
| Centre de loisirs maternel Soufflot | ❌ | 0 places |
| Centre de loisirs maternel Victor Hugo | ✅ | 2 places |
| Centre de loisirs maternel des Pâquerettes | ✅ | 30 places |
| Centre de loisirs maternel du Moulin des Gibets | ❌ | 0 places |
| Centre de loisirs Ludo Parc | ✅ | 60 places |
| Centre de loisirs du Petit Nanterre | ❌ | 0 places |
| Centre de loisirs élémentaire Abdelmalek Sayad | ✅ | 13 places |
| Centre de loisirs élémentaire Anatole France | ✅ | 12 places |
| Centre de loisirs élémentaire Jean de la Fontaine | ✅ | 6 places |
| Centre de loisirs élémentaire Joliot Curie | ✅ | 4 places |
| Centre de loisirs élémentaire Lucie Aubrac | ✅ | 68 places |
| Centre de loisirs élémentaire Maison du Chemin de l'Ile | ✅ | 6 places |
| Centre de loisirs élémentaire Maxime Gorki | ✅ | 10 places |
| Centre de loisirs élémentaire Miriam Makeba | ✅ | 26 places |
| Centre de loisirs élémentaire Pablo Néruda | ✅ | 12 places |
| Centre de loisirs élémentaire Romain Rolland | ❌ | 0 places |
| Centre de loisirs élémentaire Rouget de Lisle | ❌ | 0 places |
| Centre de loisirs élémentaire de l'Etang | ❌ | 0 places |
| Centre de loisirs élémentaire des Bizis | ✅ | 8 places |
| Centre de loisirs élémentaire des Damades | ❌ | 0 places |
| Centre de loisirs élémentaire des Fontenelles | ❌ | 0 places |
| Centre de loisirs élémentaire des Gavroches | ✅ | 6 places |
| Centre de loisirs élémentaire des Hauts Gibets | ❌ | 0 places |
| Maison de l'enfance | ✅ | 16 places |
| Club Amitié et Loisirs des Séniors (salle d'activités du square) | ✅ | 6 places |
| Salle d'activité des Muguets | ✅ | 4 places |
| Espace Arts Plastiques Thomas Lemaître | ❌ | 0 places |
| Espace Jeunesse Picasso | ✅ | 44 places |
| Espace Jeunesse de l'Université | ✅ | 14 places |
| Espace Jeunesse du Chemin de l'Ile | ✅ | 10 places |
| Espace Jeunesse du Petit Nanterre | ❌ | 0 places |
| Espace Jeunesse du Vieux-Pont | ❌ | 0 places |
| Structure Information Jeunesse (SIJ) | ✅ | 12 places |
| Crèche collective Castel Marly | ✅ | 23 places |
| Crèche collective Champ aux Melles | ✅ | 2 places |
| Crèche collective Chat Perché | ✅ | 16 places |
| Crèche collective Courte Echelle | ✅ | 14 places |
| Crèche collective Grand Champ | ✅ | 5 places |
| Crèche collective Ile aux trésors | ✅ | 30 places |
| Crèche collective La Farandole | ✅ | 6 places |
| Crèche collective Parc | ✅ | 8 places |
| Crèche collective Petit Navire | ✅ | 10 places |
| Crèche collective Petit Poucet | ❌ | 0 places |
| Crèche collective Petit Prince | ❌ | 0 places |
| Crèche collective Pinocchio | ✅ | 4 places |
| Crèche collective Pongerville | ❌ | 0 places |
| Crèche collective Souris Verte | ✅ | 286 places |
| Crèche collective Voltaire | ✅ | 16 places |
| Crèche collective Babilou | ❌ | 0 places |
| Crèche collective Les Petits Chaperons Rouges - LPCR de la Boule | ❌ | 0 places |
| Crèche collective Les Petits Chaperons Rouges - LPCR des Groues | ❌ | 0 places |
| Crèche collective Les Petits Chaperons Rouges - LPCR du Centre | ✅ | 25 places |
| Crèche collective Maison Bleue | ❌ | 0 places |
| Crèche collective les Tintinabules | ❌ | 0 places |
| Micro crèche La Cabane d'Achille et Camille | ❌ | 0 places |
| Micro crèche La Girafe Etoilée | ❌ | 0 places |
| Micro crèche Les Petits Calissons | ❌ | 0 places |
| Crèche collective CASH/Pomme d'Api | ✅ | 29 places |
| Crèche familiale Amitié Rosiers - Antenne du Parc | ✅ | 24 places |
| Crèche familiale Amitié Rosiers - Antenne du Petit Nanterre | ✅ | 4 places |
| Crèche familiale Castel Marly | ✅ | 23 places |
| Halte accueil Les Robinsons | ✅ | 30 places |
| Halte accueil Parc | ✅ | 8 places |
| Halte accueil Pinocchio | ✅ | 4 places |
| Halte accueil Kidibouts | ✅ | 20 places |
| RPAM Les Gentianes (Chemin de l'Ile) | ✅ | 30 places |
| RPAM de l'Arlequin | ✅ | 40 places |
| RPAM du Centre | ✅ | 35 places |
| Centre Gratuit d'Information de Dépistage et de Diagnostic (CeGIDD) | ✅ | 8 places |
| Centre Médico-Sportif | ✅ | 10 places |
| Centre de santé Maurice Thorez | ✅ | 8 places |
| Centre de santé des Pâquerettes | ❌ | 0 places |
| Centre de santé du Parc | ✅ | 10 places |
| Espace Santé Jeunes | ❌ | 0 places |
| Service prévention santé | ✅ | 12 places |
| Centre Médico-Psychologique Nanterre Centre | ❌ | 0 places |
| Centre Médico-Psychologique Petit Nanterre | ✅ | 30 places |
| Centre Médico-Psycho Pédagogique Les Provinces Françaises | ✅ | 206 places |
| Centre Médico-Psychologique Jean Wier | ❌ | 0 places |
| Centre Médico-Psychologique La coursive des Loupiots | ❌ | 0 places |
| Centre Médico-Psychologique Wladimir Granoff | ✅ | 5 places |
| Unité de jour Adolescents | ❌ | 0 places |
| Unité de jour Le Parc | ✅ | 6 places |
| PMI Départementale Anatole France | ✅ | 42 places |
| PMI Départementale Benoît Frachon | ✅ | 20 places |
| PMI Départementale Champ aux Melles | ✅ | 8 places |
| PMI Départementale Jacques Decour | ❌ | 0 places |
| PMI Municipale Maurice Thorez | ✅ | 8 places |
| PMI Municipale des Pâquerettes | ❌ | 0 places |
| Clinique de la Défense | ❌ | 0 places |
| Hôpital Max Fourestier | ✅ | 30 places |
| Médecine du Travail | ✅ | 39 places |
| Boulodrome du Centre | ✅ | 2 places |
| Boulodrome du Mont-Valérien | ❌ | 0 places |
| Boulodrome du Petit Nanterre | ❌ | 0 places |
| Espace street workout Marcelin Berthlot | ❌ | 0 places |
| Espace street workout Paul Langevin | ❌ | 0 places |
| Espace street workout du Radis creux | ✅ | 184 places |
| Centre sportif Voltaire | ✅ | 20 places |
| Complexe sportif Paul Eluard | ✅ | 4 places |
| Complexe sportif Paul Vaillant Couturier | ❌ | 0 places |
| Complexe sportif Université Paris Nanterre | ✅ | 32 places |
| Complexe sportif des Chenevreux | ✅ | 20 places |
| Gymnase Evariste Galois | ❌ | 0 places |
| Gymnase Jean de La Fontaine | ✅ | 16 places |
| Gymnase Léo Lagrange | ✅ | 24 places |
| Gymnase Pablo Picasso | ✅ | 10 places |
| Gymnase Paul Langevin | ✅ | 6 places |
| Gymnase Pierre de Coubertin | ✅ | 24 places |
| Gymnase Romain Rolland | ❌ | 0 places |
| Gymnase République | ✅ | 24 places |
| Gymnase Victor Hugo | ❌ | 0 places |
| Palais des Sports Maurice Thorez | ✅ | 10 places |
| Tennis Michel Jacquet | ❌ | 0 places |
| Piscine Paul Vaillant Couturier | ❌ | 0 places |
| Piscine Université Paris Nanterre | ✅ | 40 places |
| Piscine du Palais des Sports | ✅ | 10 places |
| Skatepark Hoche | ✅ | 20 places |
| Skatepark Paul Vaillant Couturier | ❌ | 0 places |
| Stade Gabriel Péri | ❌ | 0 places |
| Stade Jean Guimier | ✅ | 8 places |
| Stade Paris La Défense Arena | ✅ | 32 places |
| Stade Vincent Pascucci | ❌ | 0 places |
| Hôtel de Ville | ✅ | 24 places |
| Hôtel de Ville - Tour A | ✅ | 16 places |
| Hôtel du Département Arena | ✅ | 8 places |
| Hôtel du département (Annexe) | ✅ | 3 places |
| Mairie de quartier du Chemin de l'Ile | ✅ | 30 places |
| Mairie de quartier du Parc | ✅ | 30 places |
| Mairie de quartier du Petit Nanterre | ✅ | 4 places |
| Mairie de quartier du Plateau - Mont-Valérien | ✅ | 4 places |
| Consulat d'Algérie | ❌ | 0 places |
| Archives départementales | ✅ | 6 places |
| Centre des finances publiques - Nanterre Tivoli | ❌ | 0 places |
| Centre des finances publiques - Service de gestion comptable de Nanterre | ❌ | 0 places |
| Chambre de Commerce et d'Industrie de Paris | ✅ | 38 places |
| Chambre des Métiers et de l'Artisanat | ❌ | 0 places |
| Direction Départementale du Travail, de l'Emploi et de la Formation Professionnelle (DDTEFP) | ❌ | 0 places |
| Direction départementale des Finances publiques | ❌ | 0 places |
| Inspection Académique | ❌ | 0 places |
| Préfecture des Hauts-de-Seine | ❌ | 0 places |
| Maison des Associations Sadi Carnot | ❌ | 0 places |
| Maison des Associations du Parc des Anciennes Mairies | ✅ | 24 places |
| Société d'Histoire de Nanterre | ✅ | 28 places |
| Maison de quartier Berthelot | ✅ | 4 places |
| Maison du Chemin de l'Ile | ✅ | 10 places |
| Salle de l'antenne de quartier Anatole France | ✅ | 10 places |
| Salle de l'école Elsa Triolet | ❌ | 0 places |
| Salle de l'école La Fontaine | ✅ | 16 places |
| Salle de l'école des Pâquerettes | ✅ | 24 places |
| Salle de la MJ des Pâquerettes | ❌ | 0 places |
| Salle de la Maison de l'Enfance | ✅ | 26 places |
| Salle de la Maison des Associations | ✅ | 24 places |
| Salle de la Source | ❌ | 0 places |
| Salle de la mairie de quartier du Parc | ✅ | 30 places |
| Salle de la mairie de quartier du Petit Nanterre | ✅ | 4 places |
| Salle de la mairie de quartier du Plateau - Mont-Valérien | ✅ | 4 places |
| Salle de quartier Abdelmalek-Sayad | ✅ | 21 places |
| Salle de quartier Anatole France | ✅ | 10 places |
| Salle de quartier Joliot Curie | ✅ | 8 places |
| Salle de quartier Le Corbusier | ✅ | 4 places |
| Salle de quartier Romain Rolland | ❌ | 0 places |
| Salle de quartier Soufflot | ❌ | 0 places |
| Salle de quartier Université | ✅ | 56 places |
| Salle de quartier Voltaire | ❌ | 0 places |
| Salle de quartier des Gavroches | ✅ | 6 places |
| Salle de quartier des Provinces Françaises | ✅ | 206 places |
| Salle de quartier des Tulipes | ✅ | 44 places |
| Salle de quartier du Plateau | ✅ | 32 places |
| Salle des Guignons | ✅ | 30 places |
| Salle des Iris | ✅ | 38 places |
| Salle du Plateau | ❌ | 0 places |
| Salle polyvalente de l'espace Hoche | ✅ | 28 places |
| Salles de quartier Jacques Decour | ❌ | 0 places |
| Salles de quartier Maxime Gorki | ✅ | 10 places |
| Salles du foyer du Champs aux Melles | ❌ | 0 places |
| Véligo Nanterre Université | ✅ | 156 places |
| Fourrière | ✅ | 20 places |
| Gare Nanterre Préfecture | ✅ | 24 places |
| Gare Nanterre Université | ✅ | 196 places |
| Gare Nanterre Ville | ❌ | 0 places |
| Gendarmerie Nationale | ✅ | 24 places |
| Marché Charles de Gaulle | ✅ | 30 places |
| Marché Pablo Picasso | ✅ | 18 places |
| Marché de la Gare | ✅ | 4 places |
| Marché du Centre | ✅ | 20 places |
| Parking Becquet | ✅ | 19 places |
| Parking Hôtel de Ville | ✅ | 66 places |
| Parking La Croix | ✅ | 13 places |
| Parking Le Marché | ✅ | 20 places |
| Parking Les Chenevreux | ✅ | 20 places |
| Parking Les Lumières | ✅ | 12 places |
| Parking Les Terrasses | ✅ | 50 places |
| Parking Nanterre Coeur Université | ✅ | 74 places |
| Parking Pablo Picasso | ✅ | 18 places |
| Parking Préfecture | ✅ | 8 places |
| Parking Salvador Allende | ✅ | 6 places |
| Parking des Provinces Françaises | ✅ | 158 places |
| Bureau de police Les Fontenelles | ✅ | 16 places |
| Bureau de police Les Muguets | ✅ | 4 places |
| CRS Autoroutière Ouest Ile de France | ❌ | 0 places |
| Commissariat de Police | ✅ | 2 places |
| Poste Alouettes | ✅ | 34 places |
| Poste Chemin de l'Ile | ✅ | 32 places |
| Poste Muguets | ✅ | 14 places |
| Poste Pablo Picasso | ✅ | 46 places |
| Poste Principale | ✅ | 4 places |
| Poste Terrasses | ✅ | 30 places |
| Centre de tri des déchets | ❌ | 0 places |
| Déchèterie | ❌ | 0 places |
| Caserne des pompiers | ✅ | 30 places |
| Station de recharge de véhicule électrique | ✅ | 14 places |
| Station de recharge de véhicule électrique 8 mai 1945 | ✅ | 24 places |
| Station de recharge de véhicule électrique Champs Pierreux | ✅ | 19 places |
| Station de recharge de véhicule électrique Gambetta | ✅ | 16 places |
| Station de recharge de véhicule électrique Gascogne | ✅ | 18 places |
| Station de recharge de véhicule électrique Guilleraies | ❌ | 0 places |
| Station de recharge de véhicule électrique Hoche | ✅ | 22 places |
| Station de recharge de véhicule électrique Joffre | ✅ | 8 places |
| Station de recharge de véhicule électrique Lavoisier | ✅ | 40 places |
| Station de recharge de véhicule électrique Luaps | ❌ | 0 places |
| Station de recharge de véhicule électrique Neruda | ✅ | 12 places |
| Station de recharge de véhicule électrique Paul Vaillant Couturier | ✅ | 9 places |
| Station de recharge de véhicule électrique Pesaro 1 | ✅ | 31 places |
| Station de recharge de véhicule électrique Pesaro 2 | ✅ | 40 places |
| Station de recharge de véhicule électrique Peupliers | ❌ | 0 places |
| Station de recharge de véhicule électrique Raspail | ✅ | 16 places |
| Station de recharge de véhicule électrique Rigault | ❌ | 0 places |
| Station de recharge de véhicule électrique République | ✅ | 48 places |
| Station de recharge de véhicule électrique W. Rochet | ✅ | 37 places |
| Station de recharge de véhicule électrique boulevard National | ✅ | 10 places |
| Station de recharge de véhicule électrique rue de la Gare | ❌ | 0 places |
| Station de recharge de véhicule électrique rue des Ecoles | ❌ | 0 places |
| Taxis de La Boule | ✅ | 16 places |
| Taxis des Terrasses de l'Arche | ✅ | 24 places |
| Office de Tourisme | ✅ | 36 places |
| WC Publics - Parc des Anciennes Mairies | ❌ | 0 places |
| WC Publics - Place de la Boule | ✅ | 16 places |
| Centre Social et Culturel Les Acacias - Espace Hoche | ✅ | 28 places |
| Centre social et culturel Hissez-Haut | ❌ | 0 places |
| Centre social et culturel La Traverse | ✅ | 50 places |
| Centre social et culturel Les Acacias - Espace Sorbiers | ❌ | 0 places |
| Centre social et culturel Maison pour Tous | ❌ | 0 places |
| Centre social et culturel P'Arc en Ciel | ✅ | 10 places |
| Centre social et culturel Valérie Méot | ✅ | 38 places |
| Maison des Aubépines - Domicile collectif | ✅ | 28 places |
| Résidence Pasteur - Association Nouveau Foyer des Cités Jardins | ✅ | 42 places |
| Résidence du Parc - Association Nouveau Foyer des Cités Jardins | ❌ | 0 places |
| Résidence municipale des Muguets | ✅ | 4 places |
| Résidence municipale du Champs aux Melles | ✅ | 6 places |
| Résidence municipale du Square | ✅ | 6 places |
| Foyer Restaurant des Muguets | ✅ | 4 places |
| Foyer Restaurant du Champs aux Melles | ✅ | 6 places |
| Foyer Restaurant du Square | ❌ | 0 places |
| Bourse du Travail | ✅ | 18 places |
| Espace Accueil Insertion | ✅ | 24 places |
| Maison de l'Emploi et de la Formation (MEF) | ✅ | 16 places |
| Mission Locale de Nanterre | ✅ | 16 places |
| Pépinière d'entreprises - Pep IT | ❌ | 0 places |
| Salle Ressources du Parc | ✅ | 24 places |
| Salle Ressources du Petit Nanterre | ✅ | 38 places |
| Maison de retraite du CASH | ❌ | 0 places |
| Maison de retraite protestante | ✅ | 32 places |
| Résidence La Chamade | ✅ | 9 places |
| Résidence Sainte Geneviève | ✅ | 24 places |
| Résidence des Vignes | ❌ | 0 places |
| Agence Régionale de Santé | ❌ | 0 places |
| CCAS - Centre Communal d’Action Sociale | ✅ | 24 places |
| CROUS | ✅ | 10 places |
| Caisse Nationale d'Assurance Vieillesse | ✅ | 16 places |
| Caisse Primaire d'Assurance Maladie (CPAM 92) | ❌ | 0 places |
| Caisse Régionale d'Assurance Maladie (CRAM) | ✅ | 15 places |
| Caisse d'Allocations Familiales | ❌ | 0 places |
| Centre Local d'Information et de Coordination gérontologique - CLIC | ✅ | 24 places |
| Centre d'information - Maison Daniel Féry | ✅ | 14 places |
| EDAS - Antenne du Parc | ✅ | 19 places |
| EDAS - Le Quartz | ✅ | 20 places |
| MDPH (Maison Départementale des Personnes Handicapées) | ❌ | 0 places |
| Maison de l'Etudiant | ✅ | 90 places |
| Maison des femmes | ✅ | 74 places |
| Maison des habitants | ✅ | 64 places |
| Sécurité Sociale du Petit Nanterre | ✅ | 6 places |
| URSSAF Paris RP | ❌ | 0 places |
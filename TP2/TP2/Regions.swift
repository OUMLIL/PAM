//
//  Regions.swift
//  TP2
//

import Foundation


struct Region {
    var nom: String
    var chefLieu: String
    var departements:[String]
    var superficie: Int
    var population: Int
    var estimatedPopulation:Int
    var densite:Float
    var codeInsee: Int
    var president:String
}


class Regions {
    static let all = [
        Region(nom:"Auvergne-Rhône-Alpes",chefLieu: "Lyon",departements:["Ain",
                                                                         "Allier",
                                                                         "Ardèche",
                                                                         "Cantal",
                                                                         "Drôme",
                                                                         "Isère",
                                                                         "Loire",
                                                                         "Haute-Loire",
                                                                         "Puy-de-Dôme",
                                                                         "Rhône",
                                                                         "Savoie",
                                                                         "Haute-Savoie"] ,superficie:69711,population: 8042936,estimatedPopulation: 8153233,densite: 115.4,codeInsee: 84,president: "Laurent Wauquiez"),
        Region(nom:"Bourgogne-Franche-Comté",chefLieu: "Dijon",departements:["Côte-d'Or",
                                                                             "Doubs",
                                                                             "Jura",
                                                                             "Nièvre",
                                                                             "Haute-Saône",
                                                                             "Saône-et-Loire",
                                                                             "Yonne",
                                                                             "Territoire de Belfort"] ,superficie:47784,population: 2805580,estimatedPopulation: 2785393,densite: 58.7,codeInsee: 27,president: "Marie-Guite Dufay"),
        Region(nom:"Bretagne",chefLieu: "Rennes",departements:["Côtes-d'Armor", "Finistère", "Ille-et-Vilaine", "Morbihan"] ,superficie:27208,population: 3354854,estimatedPopulation: 3402932,densite: 123.3,codeInsee: 53,president: "Loïg Chesnais-Girard"),
        Region(nom:"Centre-Val de Loire",chefLieu: "Orléans",departements:["Cher",
                                                                           "Eure-et-Loir",
                                                                           "Indre",
                                                                           "Indre-et-Loire",
                                                                           "Loir-et-Cher",
                                                                           "Loiret"] ,superficie:39151,population: 2573180,estimatedPopulation: 2564915,densite: 65.7,codeInsee: 24,president: "François Bonneau"),
        Region(nom:"Corse",chefLieu: "Ajaccio",departements:["Corse-du-Sud", "Haute-Corse"] ,superficie:8680,population: 340440,estimatedPopulation: 349465,densite: 39.2,codeInsee: 94,president: "Marie-Antoinette Maupertuis, Présidente de l'Assemblée de Corse & Gilles Simeoni, Président du conseil exécutif de Corse"),
        Region(nom:"Grand Est",chefLieu: "Strasbourg",departements:["Ardennes",
                                                                    "Aube",
                                                                    "Marne",
                                                                    "Haute-Marne",
                                                                    "Meurthe-et-Moselle",
                                                                    "Meuse",
                                                                    "Moselle",
                                                                    "Bas-Rhin",
                                                                    "Haut-Rhin",
                                                                    "Vosges"] ,superficie:57441,population: 5556219,estimatedPopulation: 5542094,densite: 96.7,codeInsee: 44,president: "Jean Rottner"),
        Region(nom:"Hauts-de-France",chefLieu: "Lille",departements:["Aisne", "Nord", "Oise", "Pas-de-Calais", "Somme"] ,superficie:31806,population: 6004947,estimatedPopulation: 5987172,densite: 188.8,codeInsee: 32,president: "Xavier Bertrand"),
        Region(nom:"Île-de-France",chefLieu: "Paris",departements:["Paris",
                                                                   "Seine-et-Marne",
                                                                   "Yvelines",
                                                                   "Essonne",
                                                                   "Hauts-de-Seine",
                                                                   "Seine-Saint-Denis",
                                                                   "Val-de-Marne",
                                                                   "Val-d'Oise"] ,superficie:12011,population: 12262544,estimatedPopulation: 12395148,densite: 1020.9,codeInsee: 11,president: "Valérie Pécresse"),
        Region(nom:"Normandie",chefLieu: "Rouen",departements:["Calvados", "Eure", "Manche", "Orne", "Seine-Maritime"] ,superficie:29907,population: 3325032,estimatedPopulation: 3307286,densite: 111.2,codeInsee: 28,president: "Hervé Morin"),
        Region(nom:"Nouvelle-Aquitaine",chefLieu: "Bordeaux",departements:["Charente",
                                                                           "Charente-Maritime",
                                                                           "Corrèze",
                                                                           "Creuse",
                                                                           "Dordogne",
                                                                           "Gironde",
                                                                           "Landes",
                                                                           "Lot-et-Garonne",
                                                                           "Pyrénées-Atlantiques",
                                                                           "Deux-Sèvres",
                                                                           "Vienne",
                                                                           "Haute-Vienne"] ,superficie:84036,population: 6010289,estimatedPopulation: 6081985,densite: 71.5,codeInsee: 75,president: "Alain Rousset"),
        Region(nom:"Occitanie",chefLieu: "Toulouse",departements:["Ariège",
                                                                  "Aude",
                                                                  "Aveyron",
                                                                  "Gard",
                                                                  "Haute-Garonne",
                                                                  "Gers",
                                                                  "Hérault",
                                                                  "Lot",
                                                                  "Lozère",
                                                                  "Hautes-Pyrénées",
                                                                  "Pyrénées-Orientales",
                                                                  "Tarn",
                                                                  "Tarn-et-Garonne"] ,superficie:72724,population:5933185 ,estimatedPopulation: 6053548,densite: 81.6,codeInsee: 76,president: "Carole Delga"),
        Region(nom:"Pays de la Loire",chefLieu: "Nantes",departements:["Loire-Atlantique", "Maine-et-Loire", "Mayenne", "Sarthe", "Vendée"] ,superficie:32082,population: 3806461,estimatedPopulation: 3873096,densite: 118.6,codeInsee: 52,president: "Christelle Morançais"),
        Region(nom:"Provence-Alpes-Côte d'Azur",chefLieu: "Marseille",departements:["Alpes-de-Haute-Provence",
                                                                                    "Hautes-Alpes",
                                                                                    "Alpes-Maritimes",
                                                                                    "Bouches-du-Rhône",
                                                                                    "Var",
                                                                                    "Vaucluse"] ,superficie:31400,population: 5081101,estimatedPopulation: 5131187,densite: 161.8,codeInsee: 0,president: "Renaud Muselier"),
    ]
}


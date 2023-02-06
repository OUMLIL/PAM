//
//  Cocktail.swift
//  GoockTail
//
//  Created by Oussama ABBOUD on 06/02/2023.
//

import Foundation

struct Cocktail : Codable {
    //var id = UUID()
    var strDrink : String
    var strDrinkThumb : String
    var strInstructions : String
    //var strIngredients : [String]
}

struct Drinks : Codable {
    var drinks : [Cocktail]
}
//
//enum SerializationError: Error {
//    case missing(String)
//    case invalid(String, Any)
//}
//
//extension Cocktail {
//    init(json: [String: Any]) throws {
//        // Extract name
//        guard let strDrink = json["strDrink"] as? String else {
//            throw SerializationError.missing("strDrink")
//        }
//
//        // Extract and validate coordinates
//        guard let strDrinkThumb = json["strDrinkThumb"] as? String else {
//            throw SerializationError.missing("strDrinkThumb")
//        }
//
//        // Extract and validate meals
//        guard let strInstructions = json["strInstructions"] as? String else {
//            throw SerializationError.missing("strInstructions")
//        }
//
//        // Initialize properties
//        self.strDrink = strDrink
//        self.strDrinkThumb = strDrinkThumb
//        self.strInstructions = strInstructions
//    }
//}
//
//func parseJson(anyObj:AnyObject) -> Array<Cocktail>{
//
//        var list:Array<Cocktail> = []
//
//         if  anyObj is Array<AnyObject> {
//
//            for json in anyObj as Array<AnyObject>{
////             b.strDrink = (json["strDrink"] as AnyObject? as? String) ?? "" // to get rid of null
////             b.strDrinkThumb  =  (json["strDrinkThumb"] as AnyObject? as? String) ?? ""
////             b.strInstructions = (json["strInstructions"] as AnyObject? as? String) ?? ""
//                var b:Cocktail = Cocktail(json)
//               list.append(b)
//            }// for
//
//        } // if
//
//      return list
//
//    }
//
class Api : ObservableObject {
    func loadData(completion:@escaping ([Cocktail], Drinks) -> ()) {
        @Published var cocktails = [Cocktail]()
        @Published var Drinks = Drinks(cocktails)
        guard let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=mojito") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let tempJSON = try! JSONDecoder().decode(Drinks.self, from: data!)
            for (Cocktail c in )
            let cocktails = try! JSONDecoder().decode(Cocktail.self, from: tempJSON)
            DispatchQueue.main.async {
                completion(self.cocktails)
            }
        }.resume()
    }
}

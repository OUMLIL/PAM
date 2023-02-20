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
    
    init(n: String, t: String, i: String) {
            self.strDrink   = n
            self.strDrinkThumb = t
            self.strInstructions  = i
    }
}


class NetworkManager {
    func fetchItems(cookName : String,completion: @escaping ([Cocktail]) -> Void) {
        var cocktails:[Cocktail] = []
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=\(cookName)")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                let dictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:NSArray]
                let d = dictionary!["drinks"]
                
                for(drink) in d! {
                    let tmp = drink as? NSDictionary
                    let drink = tmp!["strDrink"] as? String
                    let thumb = tmp!["strDrinkThumb"] as? String
                    let instr = tmp!["strInstructions"] as? String
                    
                    let cocktail = Cocktail(n:drink!, t:thumb!, i:instr!)
                    cocktails.append(cocktail)
                }
                completion(cocktails)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}

//
//class Api : ObservableObject {
//
//    func loadData() async throws -> [Cocktail] {
//
//        var cocktails:[Cocktail] = []
//
//        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=mojito")
//        var request =  URLRequest(url: url!)
//
//        request.httpMethod = "GET"
//
//        let session = URLSession.shared
//
//        //run the request and retrieve both the data and the response of the call
//        let (data, response) = try await URLSession.shared.data(for: request)
//        do {
//            let dictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:NSArray]
//            let d = dictionary!["drinks"]
//
//            for(drink) in d! {
//                let tmp = drink as? NSDictionary
//                let drink = tmp!["strDrink"] as? String
//                let thumb = tmp!["strDrinkThumb"] as? String
//                let instr = tmp!["strInstructions"] as? String
//
//                let cocktail = Cocktail(n:drink!, t:thumb!, i:instr!)
//                cocktails.append(cocktail)
//
//            }
//        } catch {
//            print("Error parsing response data")
//        }
//
////        let dataTask = try await session.dataTask(with: request) { (data, response, error) in
////            if error == nil && data != nil {
////                //parse data to dictionnary
////                do {
////                    let dictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:NSArray]
////                    let d = dictionary!["drinks"]
//////                    let drink1 = d?[0] as? NSDictionary
////
////                    for(drink) in d! {
////                        let tmp = drink as? NSDictionary
////                        let drink = tmp!["strDrink"] as? String
////                        let thumb = tmp!["strDrinkThumb"] as? String
////                        let instr = tmp!["strInstructions"] as? String
////
////                        let cocktail = Cocktail(n:drink!, t:thumb!, i:instr!)
////                        cocktails.append(cocktail)
////
////                    }
////                    print(cocktails)
//////                    print(d?.count)
//////                    let cocktail_name = drink1!["strDrink"]
//////                    print(cocktail_name!) // ! to unwrap Optional
////                } catch {
////                    print("Error parsing response data")
////                }
////            }
////        }
////        dataTask.resume()
//        return cocktails
//    }
//}

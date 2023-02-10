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


class Api : ObservableObject {
    func loadData() {
        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=mojito")
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
                
            if error == nil && data != nil {
                //parse data to dictionnary
                do {
                    let dictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:NSArray]
                    let d = dictionary!["drinks"]
                    let drink1 = d?[0] as? NSDictionary

                    let cocktail_name = drink1!["strDrink"]
                    print(cocktail_name!) // ! to unwrap Optional
                } catch {
                    print("Error parsing response data")
                }
            }
        }
        dataTask.resume()
    }
}

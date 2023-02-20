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


class Api : ObservableObject {
    
    func loadData() -> [Cocktail] {
        
        var cocktails:[Cocktail] = []

        let url = URL(string: "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=mojito")
        var request =  URLRequest(url: url!)
        
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, response, error) in
        sleep(4)
            if error == nil && data != nil {
                //parse data to dictionnary
                do {
                    let dictionary = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String:NSArray]
                    let d = dictionary!["drinks"]
//                    let drink1 = d?[0] as? NSDictionary
                    
                    for(drink) in d! {
                        let tmp = drink as? NSDictionary
                        let drink = tmp!["strDrink"] as? String
                        let thumb = tmp!["strDrinkThumb"] as? String
                        let instr = tmp!["strInstructions"] as? String
                        
                        var cocktail = Cocktail(n:drink!, t:thumb!, i:instr!)
                        cocktails.append(cocktail)
                    }
                    
//                    print(d?.count)
//                    let cocktail_name = drink1!["strDrink"]
//                    print(cocktail_name!) // ! to unwrap Optional
                } catch {
                    print("Error parsing response data")
                }
            }
        }
        dataTask.resume()
//        vController.activityIndicator.stopAnimating()
        return cocktails
    }
}

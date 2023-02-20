//
//  DetailViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var cooktail : Cocktail!
    let imageView = UIImageView()
    
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var labelSuperficie: UILabel!
    @IBOutlet weak var labelPopulation: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = "\(cooktail.strDrink)"
        labelPopulation.text = "\(cooktail.strDrinkThumb)"
        labelSuperficie.text = "\(cooktail.strInstructions)"
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        navigationController?.popViewController( animated: true)
    }
    
    
    
}

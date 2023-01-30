//
//  DetailViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var region : Region!
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var labelSuperficie: UILabel!
    @IBOutlet weak var labelPopulation: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "nom : \(region.nom)"
        labelPopulation.text = "population : \(region.population)"
        labelSuperficie.text = "sperficie : \(region.population)"
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        navigationController?.popViewController( animated: true)
    }
    
}

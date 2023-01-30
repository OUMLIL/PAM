//
//  DetailViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var region : Region!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = region.toString()
        
    }
}

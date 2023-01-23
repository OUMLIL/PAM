//
//  ViewController.swift
//  IBBasics
//
//  Created by Oussama ABBOUD on 23/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPress(_ sender: Any) {
        myLabel.text = String(Tirage().tirer())
    }
    
}


//
//  DetailViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class DetailViewController: UIViewController {
    var cooktail : Cocktail!
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var labelSuperficie: UILabel!
    @IBOutlet weak var labelPopulation: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        somecall()
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        
        labelName.text = "\(cooktail.strDrink)"
        labelSuperficie.text = "\(cooktail.strInstructions)"
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        navigationController?.popViewController( animated: true)
    }
    
    func somecall() {
        guard let url = URL(string: cooktail.strDrinkThumb) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error loading image: \(error)")
                return
            }

            guard let data = data else {
                print("No data found")
                return
            }

            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }.resume()

    }
}

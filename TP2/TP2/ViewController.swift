//
//  ViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var cocktails = [Cocktail]()

    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        fetchItems()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func fetchItems() {
           NetworkManager().fetchItems { (cocktails) in
               self.cocktails = cocktails
               DispatchQueue.main.async {
                   self.tableView.reloadData()
               }
           }
    }
       
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktails.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cocktails[indexPath.row].strDrink
        print(cell.textLabel?.text)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     let selectedRegion = cocktails[indexPath.row]
     let viewController = DetailViewController()
     viewController.cooktail = selectedRegion
     navigationController?.pushViewController(viewController, animated: true)
     }
}
    



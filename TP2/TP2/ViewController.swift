//
//  ViewController.swift
//  TP2
//
//  Created by Oussama ABBOUD on 30/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var cocktails = [Cocktail]()
    var cooktailName = "mojito"
    @IBOutlet var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        fetchItems(searchText: cooktailName)
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func fetchItems(searchText : String) {
           NetworkManager().fetchItems(cookName: cooktailName) { (cocktails) in
               self.cocktails = cocktails
               DispatchQueue.main.async {
                   self.tableView.reloadData()
               }
           }
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        cooktailName = searchText
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktails.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cocktails[indexPath.row].strDrink
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     let selectedRegion = cocktails[indexPath.row]
     let viewController = DetailViewController()
     viewController.cooktail = selectedRegion
     navigationController?.pushViewController(viewController, animated: true)
     }
}
    



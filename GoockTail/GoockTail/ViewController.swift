//
//  ViewController.swift
//  GoockTail
//
//  Created by Oussama ABBOUD on 06/02/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var data : [Cocktail] = []
    @IBOutlet var LoadingView: UIView! {
        didSet {
            LoadingView.layer.cornerRadius = 6
          }
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
//        startIndicatingActivity()
        data = Api().loadData()
////        stopIndicatingActivity()
//        let viewController = DetailTableViewController()
//        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = data[indexPath.row].strDrink
            return cell
    }
        
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////     let selectedRegion = data[indexPath.row]
////     let viewController = DetailViewController()
////     viewController.region = selectedRegion
////     navigationController?.pushViewController(viewController, animated: true)
//     }
    
//    public func startIndicatingActivity() {
//            DispatchQueue.main.async {
//                self.activityIndicator.startAnimating()
//            }
//        }
//
//    public func stopIndicatingActivity() {
//        DispatchQueue.main.async {
//            self.activityIndicator.stopAnimating()
//        }
//    }
    
}


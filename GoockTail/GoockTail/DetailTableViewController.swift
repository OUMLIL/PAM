//
//  DetailTableViewController.swift
//  GoockTail
//
//  Created by Abdellah OUMLIL on 20/02/2023.
//

import UIKit

class DetailTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    @IBOutlet var tableView: UITableView!
    var data = ViewController().cocktails
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    // Override to support conditional rearranging of the table view.
//    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the item to be re-orderable.
//        return true
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = data[indexPath.row].strD
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     let selectedRegion = data[indexPath.row]
     let viewController = DetailViewController()
     viewController.region = selectedRegion
     navigationController?.pushViewController(viewController, animated: true)
     }
    
}


//
//
//@IBOutlet weak var tableView: UITableView!
//var data = ViewController().cocktails
//override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        self.view.backgroundColor = .white
//        tableView.delegate = self
//        tableView.dataSource = self
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
//        cell.textLabel?.text = data[indexPath.row].strDrink
//        return cell
//    }
//
////        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////         let selectedRegion = data[indexPath.row]
////         let viewController = DetailViewController()
////         viewController.data = selectedRegion
////         navigationController?.pushViewController(viewController, animated: true)
////         }

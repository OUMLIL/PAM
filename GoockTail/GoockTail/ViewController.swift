//
//  ViewController.swift
//  GoockTail
//
//  Created by Oussama ABBOUD on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {
    var cocktails = [Cocktail]()
    
    @IBOutlet var LoadingView: UIView! {
        didSet {
            LoadingView.layer.cornerRadius = 6
          }
    }
    
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        showSpinner()
        Api().loadData { (cocktails) in
            self.cocktails = cocktails
        }
        hideSpinner()
    }
    
    private func showSpinner() {
        ActivityIndicator.startAnimating()
        LoadingView.isHidden = false

    }

    private func hideSpinner() {
        ActivityIndicator.stopAnimating()
        LoadingView.isHidden = true

    }


}


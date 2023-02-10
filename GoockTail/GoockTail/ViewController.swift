//
//  ViewController.swift
//  GoockTail
//
//  Created by Oussama ABBOUD on 06/02/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var LoadingView: UIView! {
        didSet {
            LoadingView.layer.cornerRadius = 6
          }
    }
    
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        Api().loadData()
        
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


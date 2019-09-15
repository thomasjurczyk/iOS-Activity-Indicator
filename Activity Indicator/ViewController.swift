//
//  ViewController.swift
//  Activity Indicator
//
//  Created by Thomas Jurczyk on 1/31/19.
//  Copyright © 2019 Thomas Jurczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLoading=false
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loadButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.isHidden=true
        loadButton.setTitle("Start Loading", for: .normal)
    }

    @IBAction func loadButtonPressed(_ sender: UIButton) {
        if(!isLoading)
        {
            isLoading=true
            activityIndicator.isHidden=false;
            loadButton.setTitle("Stop Loading", for: .normal)
            activityIndicator.startAnimating()
        }
        else
        {
            isLoading=false
            activityIndicator.isHidden=true;
            loadButton.setTitle("Start Loading", for: .normal)
            activityIndicator.stopAnimating()
        }
    }
    
}


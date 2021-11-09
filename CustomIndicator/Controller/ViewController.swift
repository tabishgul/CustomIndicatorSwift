//
//  ViewController.swift
//  CustomIndicator
//
//  Created by tabish on 20/06/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Loader.shared.showLoader(view: self.view)
    }
    
    @IBAction func tappedStartLoader(_ sender: Any) {
        Loader.shared.showLoader(view: self.view)
    }
    
    @IBAction func tappedStopLoader(_ sender: Any) {
        Loader.shared.hideLoader(view: self.view)
    }
}


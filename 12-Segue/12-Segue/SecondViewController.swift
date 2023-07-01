//
//  SecondViewController.swift
//  12-Segue
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = myName
    }

}

//
//  ViewController.swift
//  13-Alert
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked actions
            print("ok button clicked")
        }
        alert.addAction(okButton)
        //Bir görünümü göstermek için
        self.present(alert, animated: true, completion: nil)
        
    }
}


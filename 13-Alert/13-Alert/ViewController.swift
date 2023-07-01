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
        
        /*
        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked actions
            print("ok button clicked")
        }
        alert.addAction(okButton)
        //Bir görünümü göstermek için
        self.present(alert, animated: true, completion: nil)
         
        */
        if (usernameText.text == ""){
            Alert(title: "Error", message: "Username Not Found")
        }else if (passwordText.text == ""){
            Alert(title: "Error", message: "Password Not Found")
        }else if(passwordText.text != password2Text.text){
            Alert(title: "Error", message: "Passwords Do Not Match")
        }else{
            Alert(title: "Success", message: "Login Okey")
        }
        
    }
    
    func Alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}


//
//  ViewController.swift
//  12-Segue
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    //Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad function called")

    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameTextField.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    @IBAction func nextButton(_ sender: Any) {
        userName = nameTextField.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    //Segue olmadan hemen önce yapılacak işlemler, prepareForSegue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            //as -- casting
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }

}

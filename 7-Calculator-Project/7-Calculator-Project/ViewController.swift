//
//  ViewController.swift
//  7-Calculator-Project
//
//  Created by Cem Bıçakcı on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var labelText: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumBtn(_ sender: Any) {
        if let number1 = Int(number1.text!){
            if let number2 = Int(number2.text!){
                result = number1 + number2
                labelText.text = String(result)
            }
        }
    }
    
    @IBAction func subtractBtn(_ sender: Any) {
        if let number1 = Int(number1.text!){
            if let number2 = Int(number2.text!){
                result = number1 - number2
                labelText.text = String(result)
            }
        }
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        if let number1 = Int(number1.text!){
            if let number2 = Int(number2.text!){
                result = number1 * number2
                labelText.text = String(result)
            }
        }
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        if let number1 = Int(number1.text!){
            if let number2 = Int(number2.text!){
                result = number1 / number2
                labelText.text = String(result)
            }
        }
    }
}


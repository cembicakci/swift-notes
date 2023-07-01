//
//  ViewController.swift
//  Birthday-Note-Taker
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var birthdayInput: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // Any obj ten herhangi bir değişkene değiştirme yapmak için
        // Casting - as? vs as!
        
        //nameLabel.text = storedName as? String
        //storedName i eğer mümkünse, yapabilirsen String e çevir
        
        //nameLabel.text = storedName as! String
        //storedName i kesin olarak String e çevir
        
        //if let de kullanılabilir
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        
        //UserDefaults
        //Hafızada veri kaydetmek için kullanılır. Key-Value olarak.
        
        UserDefaults.standard.set(nameInput.text!, forKey: "name")
        UserDefaults.standard.set(birthdayInput.text!, forKey: "birthday")
        //UserDefaults.standard.synchronize() => Artık kullanılmıyor.
        
        
        let name = nameInput.text!
        let birthday = birthdayInput.text!
        
        nameLabel.text = "Name: \(name)"
        birthdayLabel.text = "Birthday: \(birthday)"
        
    }
    
}


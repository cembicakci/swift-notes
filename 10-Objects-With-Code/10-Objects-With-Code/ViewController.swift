//
//  ViewController.swift
//  10-Objects-With-Code
//
//  Created by Cem Bıçakcı on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ekranın genişliği/yüksekliği
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        //Storyboard kullanmadan nesneleri kodla oluşturma
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width / 2, y: height / 2, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
    }


}


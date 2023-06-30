//
//  ViewController.swift
//  10-Objects-With-Code
//
//  Created by Cem Bıçakcı on 30.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Ekranın genişliği/yüksekliği
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        //Storyboard kullanmadan nesneleri kodla
        //let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.1, y: height / 2 - 25, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction(){
        print("clicked")
        myLabel.text = "clicked"
    }


}


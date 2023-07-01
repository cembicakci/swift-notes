//
//  ViewController.swift
//  14-Gesture-Recognizer
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var isClicked = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //kullanıcının üzerine tıklaması
        imageView.isUserInteractionEnabled = true
        
        //target, viewController ın kendisi olacak. self diyerek ona ulaşırız
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePicture(){
        
        if(isClicked == true){
            imageView.image = UIImage(named: "photo2")
            textLabel.text = "Friends 2"
            isClicked = false
        }else{
            imageView.image = UIImage(named: "photo1")
            textLabel.text = "Friends 1"
            isClicked = true
        }
       
    }

}


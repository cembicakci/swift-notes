//
//  SuperMusician.swift
//  OOP
//
//  Created by Cem Bıçakcı on 12.07.2023.
//

import Foundation

class SuperMusician: Musicians {
    
    func sing2(){
        print("enter night")
    }
    
    override func sing(){
        super.sing()
        print("exit light")
    }
}

//
//  Musicians.swift
//  OOP
//
//  Created by Cem Bıçakcı on 12.07.2023.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}


class Musicians {
    
    //Property
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    
    //Property oluşturduktan sonra define dan sonra initial işlemi gerekli.
    
    //Initializer (constructer)
    //Bir sınıftan bir object oluşturulduğunda yapılacak işlemler
    init(nameInit: String, ageInit: Int, instrumentInit: String, typeInit: MusicianType){
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
    }
    
    func sing(){
        print("nothing else matter")
    }
    
}

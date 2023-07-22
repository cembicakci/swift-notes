//
//  MusicianStruct.swift
//  18-Struct
//
//  Created by Cem Bıçakcı on 22.07.2023.
//

import Foundation

struct MusicianStruct {
    var name : String
    var age : Int
    var instrument : String
    
    //struct da eğer bir fonsikyon altında ilgili fonksiyon değişecekse mutating func kullanılmalı
    mutating func happyBirthday(){
        self.age += 1
    }
}

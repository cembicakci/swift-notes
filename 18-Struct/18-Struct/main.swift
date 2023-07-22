//
//  main.swift
//  18-Struct
//
//  Created by Cem Bıçakcı on 22.07.2023.
//

import Foundation

//Struct yapısında Class yapısından farklı olarak, tanımlama yapılırken init tanımlamaya gerek yok.
//En büyük fark struct lardan inheritance alınamıyor.

let classJames = MusicianClass(nameInput: "James", ageInput: 30, instrumentInput: "guitar")

var structJames = MusicianStruct(name: "James", age: 30, instrument: "guiatar")

// Immutable Structs
classJames.age = 51 // 51

structJames.age = 51 // Burada struct immutable olduğu için var olarak tanımlamak gerekiyor.

//Reference vs Value
let copyOfClassJames = classJames
var copyOfStructJames = structJames

//print(copyOfClassJames) // 51
//print(copyOfStructJames) // 51

copyOfClassJames.age = 52
copyOfStructJames.age = 52

//print(copyOfClassJames) // 52
//print(copyOfStructJames) // 52

//print(classJames.age) // 52 => Reference Type olarak çalışıyor
//print(structJames.age) //51 => Value type olarak çalışıyor


//References Types => Class
//Copy => Same object new reference => 1 Obj + 2 Ref

//Value Types => Struct
//Copy  => New Object => 2 Obj


//Func vs Mutating Func
//print(classJames.age) //52
classJames.happyBirthday()
//print(classJames.age) //53


//TUPLE
//Birden fazla veriyi, aynı collection içeriside göstermeye yarıyor
//let myTuple = (1,3)
//print(myTuple.1)



//Guard Let vs If Let
//Guard => Negative
//If => Positive

let myNumber = 5
func convertToIntGuard(stringInput: String) -> Int{
    
    guard let myInt = Int(stringInput) else {
        return 0
    }
    return myInt
}


func convertToIntIf(stringInput : String) -> Int{
    if let myInt = Int(stringInput){
        return myInt
    }else{
        return 0
    }
}






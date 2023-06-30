import UIKit

var myStr : String?

myStr?.uppercased()


// optionals : ? vs !
 
var myAge = "5"

var myInteger = (Int(myAge) ?? 0) * 5

if let myNumber = Int(myAge){
    print(myNumber * 5)
}else{
    print("wrong input")
}

import UIKit


func myFunction(){
    print("My Function is working")
}

myFunction()


func sumFunction(x: Int, y: Int) -> Int {
    return x + y
    
}

sumFunction(x: 10, y: 20)



func logicFunc(a: Int, b: Int) -> Bool {
    if (a > b){
        return true
    }else{
        return false
    }
}

logicFunc(a: 10, b: 10)

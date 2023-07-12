import UIKit

//Array

var myFavouriteArray = ["Truman Show", "The Green Mile", "Pulp Fiction"]

var myArray = ["Truman Show", "The Green Mile", 5, true] as [Any]

//as => casting
//any => any object

var myStrArray = ["Test1", "Test2", "Test3"]
myStrArray[0].uppercased()

myStrArray.count

myStrArray.last
myStrArray[myStrArray.count - 1]

myStrArray.sort()


//Set

//dizi ile aynı, indexleme yok. Aynı elemandan sadece bir adet olur
var mySet : Set = [1,2,3,4,5]

var myIntArr = [1,2,3,1,2]
//1,2,3,1,2
var myIntSet = Set(myIntArr)
//1,2,3



//Dictionary
//key-value pairing

var myFavouriteDirectors = ["Pulp Fiction" : "Tarantion", "Lock, Stock" : "Guy Richie", "Dark Night" : "Christopher Nolan"]

myFavouriteDirectors["Pulp Fiction"]
//Tarantino

myFavouriteDirectors["Seven Samurai"] = "Akira Kurisowa"

print(myFavouriteDirectors)


// Indexleme önemliyse Arrayler
// İçerisinde sadece bir adet bulunması için Set let
// Anahtar kelime-değer için Dictionary

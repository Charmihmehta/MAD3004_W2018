//: Playground - noun: a place where people can play
//**********************************************/
// Final Exam - Solution 10th Oct 2017, Tuesday /
/***********************************************/
import UIKit

//Question - 1
let numbers = [1, 3, 5, 7, 9]
let result = numbers.map { $0 * 10 }
print(numbers)
//1, 3, 5, 7, 9]

//Question - 2
var motto = "Bow ties are cool"
motto.replacingOccurrences(of: "Bow", with: "Neck")
print(motto)

//Question - 3
func sayHello(to name: String) -> String {
    return "Howdy, \(name)!"
}
print("\(sayHello(to: "Jayne"))")

//Question - 4
/*
let names = ["Amy", "Clara"]
for i in 0 ... names.length {
    print("Hello, \(names[i])!")
}
 */

//Question - 5
let oneMillion = 1_000_000
let oneThousand = oneMillion / 0_1_0_0_0
print(oneThousand)
//1000

//Question - 6
let names = ["Serenity", "Sulaco", "Enterprise", "Galactica"]
for name in names where name.hasPrefix("S") {
    print(name)
}
//Serenity Sulaco

//Question - 7
struct Starship {
    var name: String
}
let tardis = Starship(name: "TARDIS")
var enterprise = tardis
enterprise.name = "Enterprise"
print(tardis.name)
//TARDIS

//Question - 8
var i = 2
repeat {
    print(i)
    i *= 2
} while (i < 128)
//2 4 8 16 32 64

//Question - 9
let myStr: String
myStr = "shiny"
print(myStr)

//Question - 10
var mymotto = "Bow ties are cool"
mymotto.replacingOccurrences(of: "Bow", with: "Neck")
print(mymotto)
//Bow ties are cool





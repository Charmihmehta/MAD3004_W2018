//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

//Nil-Coalescing Operator
var x : String?// = "Pritesh" + " Patel"
//x != nil ? x! : "Hello"
//x = "Patel"
var b = x ?? "Hello"

for i in 1...10
{
    var s = 0
    let t = 1...i
    for _ in t
    {
        s = s + 5
    }
    print("5 x \(i) = \(s)")
}

//Define Range
let range = 1...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true
//range.lowerBound
range.upperBound

for k in range
{
    print(k)
}

//While
var n = 10
while n != 0 {
    print(n)
    n = n - 1
}

//Repeat
n = 10
repeat
{
    print(n)
    n = n - 1
}while n != 0

//switch
let anotherCharacter: Character = "a"
switch anotherCharacter {
case "a":
    fallthrough
//print("The letter a") // Invalid, the case has an empty body
case "A":
    print("The letter A")
case "B":
    print("The letter B")
    fallthrough
case "C":
    print("The letter C")
case "D":
    print("The letter C")
default:
    print("Not the letter A")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

//Tuple Swith
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}


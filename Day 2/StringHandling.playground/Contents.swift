//: Playground - noun: a place where people can play

import UIKit

var str = """
Hello,
playground
"""

let dollarSign = "\u{24}"
let d = "$"
let sparklingHeart = "\u{1F496}"

var a = ""
//Empty
var b = String()
if b.isEmpty {
    print("Nothing to see here")
}
// nil
var c: String?
c = "hello"
if let c = c
{
    print(c)
}
c = c ?? "Hello world"
if c!.isEmpty {
    print("Nothing to see here")
}
else{
    print(c!)
}

var newC:Character = "C"
var myName: String = "Welcome to Lambton College, Toronto"
//myName.append(c:newC)
myName = myName.uppercased()
for c in myName
{
    print(c)
}
print("Length : ", myName.count)
print("First Character : ", myName[myName.startIndex])
myName[myName.index(before: myName.endIndex)]
myName[myName.index(after: myName.startIndex)]
let index = myName.index(myName.startIndex, offsetBy: 7)
print("Last Character : ",myName[index])
//print("Last Character : ", myName[myName.endIndex])

myName = "Welcome to Lambton College, Toronto"
for index in myName.indices {
    print("\(myName[index]) ", terminator: "")
}

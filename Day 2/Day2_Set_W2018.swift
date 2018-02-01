//: Playground - noun: a place where people can play

import UIKit

var letters = Set<Character>()
letters.insert("A")
letters.insert("B")
print("Count \(letters.count)")

letters.insert("A")
print("Count \(letters.count)")


var str = "Hello World😕"

var a = "\u{24}"
var b = "\u{1F496}"
var c = "\u{65}"
print(a, b, c)

let longString = """
abfjsfsk bfsb
sdfsfsbfsdbkfdjs
sjfksdfbsfbsd
""";

print(longString)

print("\"Hello\", Pritesh")

var s = String()

s = "Welcome to Lambton"

for c in s
{
    print(c)
}


//: Playground - noun: a place where people can play

import UIKit

//Array Declaration
var a = [10, 20, 30, 40, 50]
print(a[0])

//Use methods to add values
var b = [Int]();
print("Size : \(b.count)")
b.append(100)
print(b[0])

b[0]=1000
print(b[0])
print("Size : \(b.count)")

//Declare to store any data types values
var c = [Any]();
print("Size : \(c.count)")
c.append(100)
c.append("Patel")
print(c[0])
print(c[1])

c[0]=1000
print(c[0])
print("Size : \(c.count)")

var x = a[1...3]
print(x[1])
for t in x{
    print(t)
}

//Creating an Array with a Default Value
var z = Array(repeating: 0.0, count: 3)
for t in z{
    print(t)
}


//String array and for-each with (KEY, VALUE)
var shoppingList: [String] = ["Eggs", "Milk"]
for (index, value) in shoppingList.enumerated() {
    print("Item \(index): \(value)")
}

//Combine two arrays
var xx = a + b
print(xx[0])

//Declaring Set in Swift
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop","Rock","ASDFE"]

print(favoriteGenres)

// -> will print "d" as it advances by 2
favoriteGenres[favoriteGenres.index(favoriteGenres.startIndex, offsetBy: 1)]


//Dictonaries
//<KEY,VALUE> pairs
var d1 : Dictionary<String, String> = ["India":"Hindi","Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)
d1["China"] = "Mandarin"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

d1["Canada"] = "French"
for (k,v) in d1{
    print("\(k) -> \(v)")
}

var d2 = ["India":"Hindi","Canada":"English"]
for (k,v) in d2{
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstName"] = "Pritesh" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["age"] = Int(32) as AnyObject
d3["salary"] = nil
d3["birthDate"] = NSDate() as AnyObject

print(d3)

//Getting as a Key , value pair
for (k,v) in d3{
    print("\(k) -> \(v)")
}

//Getting as a single object
for obj in d3{
    print("\(obj.key) -> \(obj.value)")
}

//Getting only Keys from dictonarry
var keyList = Array(d3.keys)
for v in keyList{
    print("KEY -> \(v)")
}

//Getting only values from dictonarry
var valueList = Array(d3.values)
for v in valueList{
    print("VALUE -> \(v)")
}

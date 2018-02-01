//: Playground - noun: a place where people can play

import UIKit
//Clouser Examples
var str = ["Pritesh","Shubham","Payal","Denis","Kirti"]
print(str)
var str1 = str.sorted {
    (s1:String, s2:String) -> Bool in
        return s1 > s2
}

print(str1)

var str2 = str.sorted {
    (s1:String, s2:String) -> Bool in
    return s1 < s2
}
print(str2)


//Sum Clousers
var sum = {(s1:Int, s2:Int) -> Int in
    return s1 + s2
}
print(sum(10, 20))

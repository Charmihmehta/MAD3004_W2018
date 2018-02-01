//: Playground - noun: a place where people can play

import UIKit
import Foundation
//-------------------------------------------------------------------
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

//------- String Extension ------------
extension String
{
    var length: Int {
        get {
            return self.count
        }
    }
    
    func contains(s: String) -> Bool
    {
        return true
    }
    
    var vowels: [String]
    {
        get
        {
            return ["a", "e", "i", "o", "u"]
        }
    }
    
    var consonants: [String]
    {
        get
        {
            return ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z"]
        }
    }
}

var s = "Hello"
print(s.length)
print(s.vowels)
print(s.consonants)

//: Playground - noun: a place where people can play

import UIKit

protocol ICalculation{
    static var MAX :Int {get}
    var a:Int{get set}
    var b:Int{get}
    func calculate() -> Int
}

class Addition:ICalculation{
    static var MAX: Int = 100000
    var a:Int
    var b:Int = 200
    init(){
        a = 1_000_00
        b = 1_00
    }
    func calculate() -> Int{
        return a + b
    }
}

class Substration:ICalculation{
    static var MAX: Int = 100000
    var a:Int = 100
    var b:Int = 10
    init(){
        a = 1_000_00
        b = 1_00
    }
    
    init(a:Int, b:Int) {
        self.a = a
        self.b = b
    }
    func calculate() -> Int{
        return a - b
    }
}

var a1 = Addition()
print("SUM : \(a1.calculate())")

var s1 = Substration(a: 100, b: 10)
print("SUB : \(s1.calculate())")

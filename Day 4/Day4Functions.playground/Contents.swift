//: Playground - noun: a place where people can play

import UIKit

//Simple declaration
func add()
{
    print("I am in User Defiend Function")
}

add()

//Single Parameter
func welcome(name:String)
{
    print("Hello, \(name)")
}

welcome(name: "Pritesh Patel")

//Two Parameter
func sum(a:Int, b:Int)
{
    var c = a + b
    print("Sum : \(c)")
}

sum(a: 10, b: 20)
var a = 100, b = 200
sum(a: a, b: b)

//Makeing parameter label optional using _
func sub(a:Int, _ b:Int)
{
    let c = a - b
    print("Sub : \(c)")
}
sub(a: a, b)

//Single return type
func mul(a: Int, b: Int) -> Int
{
    var c = a * b
    return c
}

var c = mul(a: 5, b: 2)
print("Mul : \(c)")

//Multi return values and define new label name
func swipe(number1 a: Int, b: Int) -> (Int, Int)
{
    //var temp = a
    //a = b
    //b = temp
    return (b,a)
}

(a,b) = swipe(number1: 10, b: 20)
print(a,b)
(_, c) = swipe(number1: 10, b: 20)
print(c)


//inout concept
func swipe(aa: inout Double, bb: inout Double)
{
    var temp = aa
    aa = bb
    bb = temp
}

var x = 8.0, y = 9.0
swipe(aa:&x , bb:&y )
print(x,y)

//Passing array as parameter - Class assignment

//Default Parameter

func simpleInterest(amount:Double, noOfYears: Double, rate:Double = 5.0) -> Double
{
    var si = amount * rate * noOfYears  / 100
    return si
}

print(simpleInterest(amount: 1000, noOfYears: 5))
print(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))

func si(amount:Double,_ noOfYears: Double = 5, rate:Double) -> Double
    {
        var s = amount * rate * noOfYears  / 100
        return s
}
print(si(amount: 1000, rate:5.0))
print(si(amount: 1000, 10, rate:5.0))


//Variadic or Variable number of Parameters
func display(n:Int...)
{
    for i in n{
        print(i)
    }
}

display(n: 1,2,3,4,5)

func display(numberValues:Int, parameters:[Int]...)
{
    print("Number of Values \(numberValues)")
    for i in parameters{
        print(i)
    }
}
var arr = [1,2,3,4,5]
display(numberValues:3, parameters:arr,arr,arr)


//Sum of two array
func display(arrayList:[Int]...) -> [Int]
{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count
    {
        for i in 0..<array1.count
        {
            result.append(array1[i] + array2[i])
        }
    }
    return result
}
var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)
print(a1)
print(a2)
print(a3)

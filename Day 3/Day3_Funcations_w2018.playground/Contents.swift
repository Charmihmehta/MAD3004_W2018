//: Playground - Function and Overloading

import UIKit

//Basic Syntax
func display()
{
    print("Pritesh Patel")
}

display()

//Single parameter
func display(name: String)
{
    print("Welcome, \(name)")
}

display(name:"Pritesh Patel")

//Optional label
func add(_ a: Int, b: Int)
{
    print("Sum : \(a+b)")
}

add(10, b:20)

//Two parameter and own label
func sum(of a: Int, and b: Int)
{
    print("Add : \(a+b)")
}

sum(of:10, and:20)

//Own label
func display(number n: Int)
{
    for i in 1...n
    {
        print(i)
    }
}

display(number:5)


//Return Type
func greet() -> String
{
    return "Welcome to Toronto"
}

//Return type call
var s = greet()
print(s)
print(greet())

func add(_ a: Int,_  b: Int)->Int
{
    return (a+b)
}

func add(_ a: Float,_ b: Float)-> Float
{
    return (a+b)
}

func add(_ a: String, _ b: String)-> String
{
    return a+b
}

print(add(1,2))
print(add(1,1.2))
print(add("hello"," world"))

//Return Tuples
func swipe(a: String, b: String) -> (String, String)
{
    return (b, a)
}

let x = swipe(a: "Pritesh", b: "Patel")
print(x.0, x.1)

func swipe(a: Int, b: Int) -> (a:Int, b:Int)
{
    return (b, a)
}

let z = swipe(a: 100, b: 200)
print(z.a, z.b)

//Passing Array
func addValues(arr:[Int]) -> Int
{
    var add = 0
    for i in arr
    {
        add = add + i
    }
    return add
}

print(addValues(arr: [2,3,2]))
var na =  [100,200,50, 140]
print(addValues(arr: na))

//Passing array and return tuples
func findMinMax(arr:[Int]) -> (min:Int,max:Int)
{
    return (arr.min() ?? 0,arr.max() ?? 0)
}

//Min and Max both will be ZERO using this operator ??
print(findMinMax(arr: []))
var minmax = findMinMax(arr: [200,30,50,60,800,100])
print(minmax.min, minmax.max)

//Default Parameter
func si(amount: Double, noOfYears: Int, rateOfInterest: Float = 0.5) -> Double
{
    return (amount * Double(noOfYears) * Double(rateOfInterest))
}

print(si(amount: 1000, noOfYears: 5))
print(si(amount: 1000, noOfYears: 5, rateOfInterest: 1.25))


//Default Parameter inbetween when label is defined
func sii(amount: Double, noOfYears: Int = 5, rateOfInterest: Float) -> Double
{
    return (amount * Double(noOfYears) * Double(rateOfInterest))
}

print(sii(amount: 2000, rateOfInterest: 1.5))
print(sii(amount: 1000, noOfYears: 5, rateOfInterest: 1.25))

//Default Parameter without label
func siii(_ amount: Double, _ noOfYears: Int = 5, _ rateOfInterest: Float) -> Double
{
    return (amount * Double(noOfYears) * Double(rateOfInterest))
}

print(siii(2000, 0, 1.5))
print(siii(1000, 5, 1.25))

//iout Example
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var x1 = 100
var x2 = 200


print(x1, x2)
swapTwoInts(&x1, &x2)
print(x1, x2)

//Inbuild function provided by Swift library
swap(&x1, &x2)

func printValues(a : Int)
{
    print(a)
}
printValues(a:10000)

func printValues(a : [Int])
{
    for i in a
    {
        print(i)
    }
}

printValues(a: [5,4,3,2,1])

print("--------------")
func printValues(b: Int, _ a : Int...)
{
    for i in a
    {
        print(i)
    }
}

printValues(b: 1, 2, 50, 30, 500, 30, 50, 60)

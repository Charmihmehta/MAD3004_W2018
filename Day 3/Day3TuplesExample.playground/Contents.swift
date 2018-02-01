//: Playground - noun: a place where people can play

import UIKit

var a = 5, b = 2
//a+=1

//var c = 5 + b / a-=1 + (a+=1)

/*
 for a = 1; a <= 10; a+=1{
 print(a)
 }
 */

//Declaring tuples
var x = (10, 20, "Patel")
print(x.0)
print(x.1)
print(x.2)

var y = (100,x.1)
print(y.0)

var (a1,a2) = y
print(a1)
print(a2)

var (b1, _, b2) = x



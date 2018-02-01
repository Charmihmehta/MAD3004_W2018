//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a = [100, 200, 300, 400, 500]

//print(a[0])

a.append(600)

//print(a[5])


var b  = [1000, 2000, 3000]

a = a + b

for i in a
{
    print(i)
}

//var c: [Int]!

//print(a.count)

//c?.append(800)

//print(c?.count ?? 0)

print("--- NEW ---")
for i in a[5...]
{
    print(i)
}

print("--- NEW ---")
for i in a[2...5]
{
    print(i)
}

print("--- NEW ---")
for i in a[3..<6]
{
    print(i)
}

var d = [2...5]
print("--- Special NEW ---")
for i in d
{
    print(i)
}

var e = a[2...5]

print("--- NEW ---")
for i in e
{
    print(i)
}

print("--- ONE ---")
print(a[2])
print("--- TWO ---")
print(e[2])

e[2] = 90000

print("--- THREE ---")
print(a[2])
print("--- FOUR ---")
print(e[2])

print("Size of e \(e.count)")

var threeDoubles = Array(repeating: 0.0, count: 3)

for (k, v) in a.enumerated()
{
    print("Index : \(k)-->\(v)")
}


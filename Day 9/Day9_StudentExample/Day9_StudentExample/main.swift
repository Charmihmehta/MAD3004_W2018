//
//  main.swift
//  Day9_StudentExample
//
//  Created by moxDroid on 2017-10-04.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation

var s1 = Student()
var s2 = Student(sid: 1,snm: "Pritesh Patel",marks: [120.0, 139.50, 120])
s2.display()

//Set Property
s2.sid = 100

//ReadOnly property
print("Total : \(s2.total)")

//Extension Method
s2.sayGoodByee()

//Subscript call
print(s2[0])

//Subscript is only readonly
//s2[1] = 2000
print(s2[1])
print("--------------")


//Inherited Constructor
var f1 = FullTimeStudent(sid: 200, snm: "Test Name",marks: [100, 100, 100])
f1.sid = 500

//Inherited/Confirm Protocol
f1.display()

//Extension Method
f1.welcome(name: "Pritesh Patel")

//Inherited method
f1.sayGoodByee()


//: Playground - noun: a place where people can play

import UIKit

var students = [String: AnyObject]()
//First Student Record
var student = [String: AnyObject]()
student["studentId"] = "S0001" as AnyObject

var studentName = [String: String]()
studentName["firstName"] = "Pritesh"
studentName["lastName"] = "Patel"
student["studentFullName"] = studentName as AnyObject

var studentAddress = [String: Any]()
studentAddress["streetName"] = "370 King Street West"
studentAddress["unitNumber"] = 500
studentAddress["city"] = "Toronto"
studentAddress["postalCode"] = "M1H 2Y7"
student["studentFullAddress"] = studentAddress as AnyObject

var studentBirthDate = [String: Int]()
studentBirthDate["day"] = 26
studentBirthDate["month"] = 09
studentBirthDate["year"] = 2017
student["studentBirthDate"] = studentBirthDate as AnyObject

students["S0001"] = student as AnyObject
students["S0002"] = student as AnyObject
students["S0003"] = student as AnyObject
students["S0004"] = student as AnyObject
students["S0005"] = student as AnyObject

print(students["S0004"])

for sObj in students{
    var s = sObj.value
    print(s["studentId"]!)
    var nm = s["studentFullName"] as AnyObject
    print(nm["firstName"]!)
    print(nm["lastName"]!)
}


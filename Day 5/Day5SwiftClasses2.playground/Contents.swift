//: Playground - noun: a place where people can play

import UIKit
class Student{
    //let x = 100
    var sid:Int = 0
    var snm:String?
    var result:String? = "Unknown"
    
    //Properties
    var total:Double = 0.0
    {
        willSet(newTotal) {
           
        }
        didSet {
            self.per = self.total / 5.0
        }
    
    }
    var per:Double = 0.0
    {
        willSet(newPercentage) {
            print("***Result About to set based on new \(newPercentage)% calculation")
        }
        didSet {
            if self.per >= 80.0{
                self.result = "First"
            } else if self.per >= 70.0{
                self.result = "Second"
            } else if self.per >= 60.0{
                self.result = "Third"
            } else if self.per >= 50.0{
                self.result = "Pass"
            } else {
                self.result = "Fail"
            }
        }
    }
    
    func setData(studentId sid:Int, snm:String, marks:Double){
        self.sid = sid
        self.snm = snm
        self.total = marks
    }
    
    func displayData(){
        print("---------------------------")
        print("Student ID : \(sid)")
        print("Student Name : \(snm!)")
        print("Student Total Marks : \(total)")
        print("Student Percentage : \(per)")
        print("Student Final Result : \(self.result!)")
        print("---------------------------")
    }
}

var s1 = Student()
s1.setData(studentId: 1, snm: "Pritesh", marks: 200)
s1.displayData()
s1.total = 500
s1.displayData()


s1.total = 350
s1.displayData()

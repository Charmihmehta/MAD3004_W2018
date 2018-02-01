//
//  Student.swift
//  Day9_StudentExample
//
//  Created by moxDroid on 2017-10-04.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation
class Student{
    private var _sid:Int?
    
    var sid:Int{
        set{
            self._sid = newValue
        }
        get{
            return _sid!
        }
    }
    private var _snm:String?
    private var _total:Double?
    private var marks:[Double]?
    
    subscript(index:Int)->Double{
        return marks![index]
    }
    
    var total:Double{
        get{
            self._total = marks![0] + marks![1] + marks![2]
            return self._total ?? 0.0
        }
    }
    
    init() {
        _sid = 0
        _snm = ""
        _total = 0.0
        marks = [Double]()
    }
    
    init(sid: Int, snm: String, marks:[Double]) {
        self._sid = sid
        self._snm = snm
        self.marks = marks
    }
    
    func display() {
        print(self._sid!, self._snm!)
    }
}

extension Student{
    func sayGoodByee() {
        print("See you soon...")
    }
}

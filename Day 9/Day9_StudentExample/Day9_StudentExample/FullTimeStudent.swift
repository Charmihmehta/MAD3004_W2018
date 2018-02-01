//
//  FullTimeStudent.swift
//  Day9_StudentExample
//
//  Created by moxDroid on 2017-10-04.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation

class FullTimeStudent: Student {
    var noOfDays:Int?
    
    override func display() {
        super.display()
        print(self.sid)
    }
}

extension FullTimeStudent: IDisplay{
    func welcome(name:String){
        print("Hello, \(name)")
    }
}

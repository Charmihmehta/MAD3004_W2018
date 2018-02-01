//
//  MySingleton.swift
//  Day10_SingletonExample
//
//  Created by moxDroid on 2017-10-05.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation
class MySingleton{
    private static var instant = MySingleton()
    
    private init(){}
    
    static func getInstant() -> MySingleton{
        if instant != nil{
            return instant
        }else{
            instant = MySingleton()
           return instant
        }
    }
    
    func getMyName() -> String{
        return "Pritesh Patel"
    }
}

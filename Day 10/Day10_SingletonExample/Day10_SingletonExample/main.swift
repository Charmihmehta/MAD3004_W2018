//
//  main.swift
//  Day10_SingletonExample
//
//  Created by moxDroid on 2017-10-05.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation

print("Hello, World!")

//'MySingleton' initializer is inaccessible due to 'private' protection level
//var s1 = MySingleton()
//print(MySingleton.instant.getMyName());

MySingleton.getInstant().getMyName()



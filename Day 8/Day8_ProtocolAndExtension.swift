//: Playground - noun: a place where people can play

import UIKit

protocol IDisplay{
    init()
    func display()
}

protocol IGreetings{
    func greet() -> String
}

class Fruits : IDisplay, IGreetings{
    
    var name:String!
    required init(){
        
    }
    init(name:String) {
        self.name = name
    }
    //IDisplay Protocol
    func display() {
        print("Protocol display()")
    }
    
    ///IGreetings Protocol
    func greet() -> String {
        return "Welcome to Protocol Programming"
    }
    
    //Method of Fruits class
    func greet(_ name:String){
        print("I will fire the error \(name)")
    }
}

var f1 = Fruits()
f1.display()
print(f1.greet())
f1.greet("Pritesh")

var f2: IDisplay = Fruits()
f2 = f1 as Fruits

f2.display()


class Apple:Fruits{
    required init(){
        super.init(name:"Golden Apple")
    }
    
    override init(name:String) {
        super.init()
        self.name = name
    }
}

print("-------- Apple starts from here--------")
var apple1 = Apple()
apple1.display()


//: Playground - noun: a place where people can play
//Day-8 : More Example Protocol and Extension
import UIKit

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    let canFly = true
    
    var airspeedVelocity: Double {
        return 3 * flappyFrequency * flappyAmplitude
    }
}

struct Penguin: Bird {
    let name: String
    let canFly = false
}

struct SwiftBird: Bird, Flyable {
    var name: String { return "Swift \(version)" }
    let version: Double
    let canFly = true
    
    // Swift is FASTER every version!
    var airspeedVelocity: Double { return version * 1000.0 }
}

extension Bird {
    // Flyable birds can fly!
    var canFly: Bool { return self is Flyable }
}

enum UnladenSwallow: Bird, Flyable {
    case african
    case european
    case unknown
    
    var name: String {
        switch self {
        case .african:
            return "African"
        case .european:
            return "European"
        case .unknown:
            return "What do you mean? African or European?"
        }
    }
    
    var airspeedVelocity: Double {
        switch self {
        case .african:
            return 10.0
        case .european:
            return 9.9
        case .unknown:
            fatalError("You are thrown from the bridge of death!")
        }
    }
}

extension UnladenSwallow {
    var canFly: Bool {
        return self != .unknown
    }
}

UnladenSwallow.unknown.canFly  // false
UnladenSwallow.african.canFly  // true
Penguin(name: "King Penguin").canFly  // false


extension CustomStringConvertible where Self: Bird {
    var description: String {
        return canFly ? "I can fly" : "Guess I’ll just sit here :["
    }
}

UnladenSwallow.african

let numbers = [10,20,30,40,50,60]
let slice = numbers[1...3]
let reversedSlice = slice.reversed()

let answer = reversedSlice.map { $0 * 10 }
print(answer)


class Motorcycle {
    init(name: String) {
        self.name = name
        speed = 200
    }
    var name: String
    var speed: Double
}


protocol Racer {
    var speed: Double { get }  // speed is the only thing racers care about
}

extension FlappyBird: Racer {
    var speed: Double {
        return airspeedVelocity
    }
}

extension SwiftBird: Racer {
    var speed: Double {
        return airspeedVelocity
    }
}

extension Penguin: Racer {
    var speed: Double {
        return 42  // full waddle speed
    }
}

extension UnladenSwallow: Racer {
    var speed: Double {
        return canFly ? airspeedVelocity : 0
    }
}

extension Motorcycle: Racer {}

let racers: [Racer] =
    [UnladenSwallow.african,
     UnladenSwallow.european,
     UnladenSwallow.unknown,
     Penguin(name: "King Penguin"),
     SwiftBird(version: 3.0),
     FlappyBird(name: "Felipe", flappyAmplitude: 3.0, flappyFrequency: 20.0),
     Motorcycle(name: "Giacomo")
]


func topSpeed(of racers: [Racer]) -> Double {
    return racers.max(by: { $0.speed < $1.speed })?.speed ?? 0
}

topSpeed(of: racers) // 3000

func topSpeed<RacerType: Sequence>(of racers: RacerType) -> Double
    where RacerType.Iterator.Element == Racer {
        return racers.max(by: { $0.speed < $1.speed })?.speed ?? 0
}
topSpeed(of: racers[1...3]) // 42

extension Sequence where Iterator.Element == Racer {
    func topSpeed() -> Double {
        return self.max(by: { $0.speed < $1.speed })?.speed ?? 0
    }
}

racers.topSpeed()        // 3000
racers[1...3].topSpeed() // 42

/*
 protocol Score {
 var value: Int { get }
 }
 
 struct RacingScore: Score {
 let value: Int
 }
 */
protocol Score: Equatable, Comparable {
    var value: Int { get }
}

struct RacingScore: Score {
    let value: Int
    
    static func ==(lhs: RacingScore, rhs: RacingScore) -> Bool {
        return lhs.value == rhs.value
    }
    
    static func <(lhs: RacingScore, rhs: RacingScore) -> Bool {
        return lhs.value < rhs.value
    }
}

RacingScore(value: 150) >= RacingScore(value: 130)  // true

//---------------------------------------------------------------------
protocol Animal{
    var lives:Int { get set }
    var limbs:Int { get }
    func makeNoise() -> String
}

class Cat: Animal{
    var lives = 9
    var limbs = 4
    func makeNoise() -> String {
        return "meow"
    }
}

let cat = Cat() // {lives 9 limbs 4}
cat.makeNoise() // "meow"
cat.lives       // 9
cat.lives = 8   // {lives 8 limbs 4}
cat.lives       // 8

//---------------------------------------------------------------------

DispatchQueue.main.async {
    print("Hello World")
}

let concurrentQueue = DispatchQueue(label:"com.exmple.queue",attributes:.concurrent)
concurrentQueue.sync {
    print("Concurrent Queue")
}
concurrentQueue.async {
    print("Concurrent queue")
}

for i in 1...5{
    concurrentQueue.async {
        print("Concurrent Queue:",i)
        sleep(1)
    }
}

print("Hello")

//-------------------------------------------------------------------
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters"

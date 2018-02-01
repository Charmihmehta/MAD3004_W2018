//: Playground - noun: a place where people can play

import UIKit

var a = ["name":"Pritesh", "city":"Toronto"]

print("Keys/Values")
for (k, v) in a{
    print("\(k)-->\(v)")
}

a["job"] = "Software Developer"

print("Only Keys")
for k in a.keys{
    print("\(k)")
}

print("Only Values")
for v in a.values{
    print("\(v)")
}

if let ov = a.updateValue("London", forKey: "city")
{
    print("The old value for city was \(ov).")
}

print("Extract Keys and store in array")
let keys = [String](a.keys)

for i in keys
{
    print(i)
}

//Declaration using Dictionary type
var b = Dictionary<String,String>()
b["India"] = "New Delhi"

print("---- B ---- Keys/Values")
for (k, v) in b{
    print("\(k)-->\(v)")
}

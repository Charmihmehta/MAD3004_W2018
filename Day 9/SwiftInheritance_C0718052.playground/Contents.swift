import UIKit

public class Employee {
    internal var name: String!
    
    // failable initializer: if name is empty, return nil
    public init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    // earnings computed property
    public var earnings: Double {
        return 0.0                     //Employee earnings will be calculated as per TYPE of employee
    }
    
    //function to display data
    public func display(){
    print("Emplpoyee name:\(name)")     // Displays data as per Employee type, must be overriden
    }
}




public class SalariedEmployee : Employee {
    var sid : Int?
    var perHourSalary: Double?
    var noOfHours: Double?
  
    static var dictEmployee = [Int : SalariedEmployee]()
    static var k = Int()
    
    // failable initializer
    public init?(name: String, perHourSalary: Double, noOfHours : Double, sid: Int) {
        
        super.init(name: name) // initialize inherited property
        // if any arguments are invalid, return nil
        if perHourSalary == 0.0 {
            return nil // an initializer argument was invalid, so fail
        }
        self.perHourSalary = perHourSalary
        self.noOfHours = noOfHours
        self.sid = sid
        addToDict()
        
    }
    // earnings computed property
    override public var earnings: Double {                 // Overriding property earnings
        return (perHourSalary!*noOfHours!)
    }
    
    override public func display() {                       // Overriding func display
        print("Salaried employee : \(name!)'s salary is \(self.earnings)")
    }
    
    func addToDict(){
    SalariedEmployee.dictEmployee.updateValue(self, forKey: SalariedEmployee.k)
        SalariedEmployee.k+=1
    }
}




public class BasePlusCommissionEmployee : Employee {
    var baseSalary: Double!
    public var grossSales: Double!
    public var commissionRate: Double!
    static var dictEmployeeB = [Int : BasePlusCommissionEmployee]()
    static var k = Int()
    
    // failable initializer
    public init?(name: String, grossSales: Double,
                 commissionRate: Double, baseSalary: Double) {
        super.init(name: name) // initialize inherited property
        // if any arguments are invalid, return nil
        if (grossSales <= 0.0) ||
            (commissionRate <= 0.0) || (baseSalary <= 0.0){
            return nil // an initializer argument was invalid, so fail
        }
        self.baseSalary = baseSalary
        self.grossSales = grossSales
        self.commissionRate = commissionRate
        addToDict()
    }
    
    // Overriden earnings computed property
    public override var earnings: Double {
        return (baseSalary + commissionRate*grossSales)
    }

    // Overriden display method
    public override func display() {
        print("BasePLusCommssion employee : \(name!)'s salary is \(self.earnings)")
    }
    
    func addToDict(){
        
        BasePlusCommissionEmployee.dictEmployeeB.updateValue(self, forKey: BasePlusCommissionEmployee.k)
        BasePlusCommissionEmployee.k+=1
    }
}




public class CommissionEmployee : BasePlusCommissionEmployee {
    var productSold : String!
    static var dictEmployeeC = [Int : CommissionEmployee]()
    static var k1 = Int()
    
    // failable initializer
    public init?(name: String, grossSales: Double,
                 commissionRate: Double, baseSalary: Double, productSold: String) {
        
        super.init(name: name, grossSales: grossSales,
                   commissionRate: commissionRate, baseSalary: baseSalary) // initialize inherited property
        
         // if any arguments are invalid, return nil
         if productSold.isEmpty{
             return nil // an initializer argument was invalid, so fail
             }
         self.productSold = productSold
        
    }
    
    
     // Overriden earnings computed property
     public override var earnings: Double {
     return (commissionRate*grossSales)
        }
    
    // Overriden display method
     override public  func display() {
        print("Commssion salary employee : \(name!) salary is \(self.earnings) by selling \(self.productSold!)")
        
        }

    override func addToDict(){
        
        CommissionEmployee.dictEmployeeC.updateValue(self, forKey: CommissionEmployee.k1)
        CommissionEmployee.k1+=1
    }

}



var emp = [Employee]()

//Appending Salaried employee to emp
if let  s1 = SalariedEmployee(name: "Shubham", perHourSalary: 12, noOfHours : 12, sid: 1){emp.append(s1)}
else{print("Object not created")}


if let s2 = SalariedEmployee(name: "Jaskeerat", perHourSalary: 11.5, noOfHours: 34, sid: 2){emp.append(s2)}
else{print("Object not created")}

if let s3 = SalariedEmployee(name: "Pritesh", perHourSalary: 18, noOfHours: 65, sid: 3){emp.append(s3)}
else{print("Object not created")}

//Appending BasePlusCommission employee to emp
if let b1 = BasePlusCommissionEmployee(name: "Mark", grossSales: 123, commissionRate: 11.2, baseSalary: 1000){emp.append(b1)}
else{print("Object not created")}
if let b2 = BasePlusCommissionEmployee(name: "Chandler", grossSales: 223, commissionRate: 10, baseSalary: 2000){emp.append(b2)}
else{print("Object not created")}

//Appending Commission employee to emp
if let c1 = CommissionEmployee(name: "Mike", grossSales: 400, commissionRate: 5.00, baseSalary: 2000, productSold: "Apple Watch Series 3"){emp.append(c1)}
else{print("Object not created")}
if let c2 = CommissionEmployee(name: "Joey", grossSales: 300, commissionRate: 7.00, baseSalary: 8000, productSold: "iPhone x"){emp.append(c2)}
else{print("Object not created")}


for currentEmployee in emp
{   currentEmployee.display()
    if let employee = currentEmployee as? CommissionEmployee   {
        employee.commissionRate = employee.commissionRate*1.30
        employee.display()
    }
}

print("\n ************  Fetching the Salaried Employee Records from Dictionary  **************")
for (_,v) in SalariedEmployee.dictEmployee{
    v.display()
}

print("\n *********  Fetching the BasePlusCommission Employee Records from Dictionary  **********")
for (_,v) in BasePlusCommissionEmployee.dictEmployeeB{
    v.display()
}

print("\n ************  Fetching the Commission Employee Records from Dictionary  **************")
for (_,v) in CommissionEmployee.dictEmployeeC{
    v.display()
}

/*
In the example above, the CarProtocol protocol acts as the abstraction layer. 
The Car class implements the protocol. 
The user or driver doesn't need to know how the car accelerates, changes gears, or steers. 
They only need to call the respective function and the underlying implementation (complex details) are hidden from them. 
This is how abstraction works in Swift and in object-oriented programming in general.
*/
// Define the protocol, which is the abstraction layer
protocol CarProtocol {
    func accelerate()
    func changeGear()
    func steer()
}

// Implement the protocol in a concrete class
class Car: CarProtocol {
    func accelerate() {
        // Put the complex code to accelerate the car here
        print("The car is accelerating")
    }
    
    func changeGear() {
        // Put the complex code to change the car gear here
        print("The car gear has been changed")
    }
    
    func steer() {
        // Put the complex code to steer the car here
        print("The car is steering")
    }
}

// Now, from a driver's perspective
let myCar: CarProtocol = Car()

myCar.accelerate() // Outputs: The car is accelerating
myCar.changeGear() // Outputs: The car gear has been changed
myCar.steer() // Outputs: The car is steering

/*
Output:

The car is accelerating
The car gear has been changed
The car is steering
*/
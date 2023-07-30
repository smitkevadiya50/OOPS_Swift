/*
In this example, the Bird class defines a fly() method. 
The Penguin and Parrot classes both inherit from the Bird class and override the fly() method to provide their own implementations. 
This demonstrates polymorphism, where the same method name fly() is used to perform different behaviors.

Furthermore, the loop over the array of Bird objects and calls the fly() method on each object. 
The exact behavior of fly() depends on whether the object is a Penguin or a Parrot. 
The if let construct is then used to check the type of each object and call the specific method (swim() or talk()) for that type. 
This is another example of polymorphism, where objects of different types are processed in a uniform way.
*/
// Defining a base class
class Bird {
    var name: String

    init(name: String) {
        self.name = name
    }

    func fly() {
        print("\(name) is a bird and can fly.")
    }
}

// Defining a class that inherits from the Bird class
class Penguin: Bird {
    override func fly() {
        print("\(name) is a penguin and can't fly.")
    }

    func swim() {
        print("\(name) is a penguin and can swim.")
    }
}

// Defining another class that inherits from the Bird class
class Parrot: Bird {
    override func fly() {
        print("\(name) is a parrot and can fly.")
    }
    
    func talk() {
        print("\(name) is a parrot and can talk.")
    }
}

let penguin = Penguin(name: "Pingu")
let parrot = Parrot(name: "Polly")

// Create an array of birds
let birds: [Bird] = [penguin, parrot]

// Iterate over the birds array and call the fly method
for bird in birds {
    bird.fly()
    
    // Check the type of bird and call the specific method
    if let penguin = bird as? Penguin {
        penguin.swim()
    } else if let parrot = bird as? Parrot {
        parrot.talk()
    }
}
/*
Output:

Pingu is a penguin and can't fly.
Pingu is a penguin and can swim.
Polly is a parrot and can fly.
Polly is a parrot and can talk.
*/
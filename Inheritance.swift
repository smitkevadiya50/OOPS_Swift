/*
In this example, Animal is a base class and Dog and Cat are derived classes. 
The derived classes inherit properties and methods from the base class. 
In this case, they inherit the name property and sound() method from Animal.

The sound() method is then overridden in both Dog and Cat to provide specific functionality for each derived class. 
Additionally, each derived class also has its own method, fetch() in Dog and ignore() in Cat, which the Animal base class does not have. 
This demonstrates how inheritance allows for code reusability and a structure that can model real-world relationships.
*/
class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sound() {
        print("\(name) makes a sound.")
    }
}

class Dog: Animal {
    override func sound() {
        print("\(name) barks.")
    }
    
    func fetch() {
        print("\(name) fetches the ball.")
    }
}

class Cat: Animal {
    override func sound() {
        print("\(name) meows.")
    }
    
    func ignore() {
        print("\(name) ignores you.")
    }
}

let dog = Dog(name: "Rover")
dog.sound() // Outputs: Rover barks.
dog.fetch() // Outputs: Rover fetches the ball.

let cat = Cat(name: "Whiskers")
cat.sound() // Outputs: Whiskers meows.
cat.ignore() // Outputs: Whiskers ignores you.

/*
Output:

Rover barks.
Rover fetches the ball.
Whiskers meows.
Whiskers ignores you.
*/
/*1*/
/*class Actor {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    func appearance() {}
}

class Singer: Actor {
    override func appearance() {
        print("\(name) \(surname) is singers")
    }
}

class Dancer: Actor {
    override func appearance() {
        print("\(name) \(surname) is dances")
    }
}

class Artist: Actor {
    override func appearance() {
        name = "Vitalik"
        print("\(name) \(surname) is artists")
    }
}

func appearance(actors: [Actor]) {
    for actor in actors {
        actor.appearance()
    }
}

var actors = [ Singer(name: "Katya", surname: "Lely"), Dancer(name: "Tony", surname: "Kapuero"), Artist(name: "Lidiya", surname: "Penzlyk") ]

appearance(actors: actors)
*/

/*2*/
/*class Vehicle {
    var speed: Int
    var capacity: Int
    var costTrip: Int
    
    init(speed: Int, capacity: Int, costTrip: Int) {
        self.speed = speed
        self.capacity = capacity
        self.costTrip = costTrip
    }
    
    func price(people: Int, distance: Int) {
        let vehicle = String(describing: type(of: self)).lowercased()
        let ride = people / capacity + 1
        let returnRide = ride - 1
        let cost = (ride + returnRide) * distance * costTrip
        let time = Double((ride + returnRide) * distance) / Double(speed)
        
        print("It takes \(time) hour, \(cost) and \(ride) rides to transport \(people) people to \(distance) km by \(vehicle)" )
    }
}

class Airplane: Vehicle {
    init() {
        super.init(speed: 400, capacity: 100, costTrip: 100)
    }
}

class Ship: Vehicle {
    init() {
        super.init(speed: 200, capacity: 200, costTrip: 20)
    }
}

class Helicopter: Vehicle {
    init() {
        super.init(speed: 300, capacity: 5, costTrip: 80)
    }
}

class Car: Vehicle {
    init() {
        super.init(speed: 150, capacity: 5, costTrip: 50)
    }
}

var car = Car()
var ship = Ship()
var helicopter = Helicopter()
var airplane = Airplane()

car.price(people: 100, distance: 800)
*/

/*3*/

/*3*/
class Being {
    static var count = Count()
    
    class Count {
        static var all = 0
        static var fourLegged = 0
        static var animals = 0
    }
}

class Human: Being {
    override init() {
        Being.Count.all += 1
    }
}

class Crocodile: Being  {
    override init() {
        Being.Count.all += 1
        Being.Count.fourLegged += 1
        Being.Count.animals += 1
    }
}

class Monkey: Being  {
    override init() {
        Being.Count.animals += 1
        Being.Count.all += 1
    }
}

class Dog: Being  {
    override init() {
        Being.Count.all += 1
        Being.Count.fourLegged += 1
        Being.Count.animals += 1
    }
}

class Giraffe: Being  {
    override init() {
        Being.Count.all += 1
        Being.Count.fourLegged += 1
        Being.Count.animals += 1
    }
}

var human1 = Human()
var human2 = Human()
var monkey = Monkey()
var giraffe = Giraffe()
var crocodile = Crocodile()


print("All: ", Being.Count.all)
print("Four-legged: ", Being.Count.fourLegged)
print("Animmals: ", Being.Count.animals)
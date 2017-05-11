/*2*/
struct Point {
    var x: Int
    var y: Int
}

struct Size {
    var weight: Int
    var height: Int
}

enum Direction {
    case stay
    case left
    case right
    case up
    case down
}

class Room {
    static var size = Size(weight: 0, height: 0)
    var person: Person
    
    init(weight: Int, height: Int) {
        Room.size = Size(weight: weight, height: height)
        person = Person(x: -1, y: -1)
    }
    
    func addPerson(person: Person) {
        self.person = person
    }
    
    func showRoom() {
        for j in 0..<Room.size.height {
            for i in 0..<Room.size.weight {
                person.point.x == i && person.point.y == j ? print("\u{1F468}", terminator:"") : print("\u{2B1C}", terminator:"")
            }
            print()
        }
    }
}

class Person {
    var direction = Direction.stay
    var point: Point
    
    init(x: Int, y: Int) {
        point = Point(x: x, y: y)
    }
    
    func move(direction: Direction) {
        switch direction {
        case .left:
            if point.x >= 1 {
                point.x -= 1
            }
        case .right:
            if point.x < Room.size.weight-1 {
                point.x += 1
            }
        case .up:
            if point.y >= 1 {
                point.y -= 1
            }
        case .down:
            if point.y < Room.size.height-1 {
                point.y += 1
            }
        default:
            break
        }
    }
}

var person = Person(x: 3, y: 1)
var room = Room(weight: 4, height: 3)

room.addPerson(person: person)
room.showRoom()

room.person.move(direction: Direction.down)
room.showRoom()
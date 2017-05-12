/*3-5*/
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
    var person = Person(x: -1, y: -1)
    static var box = Box(x: -1, y: -1)
    static var goal = Goal(x: -1, y: -1)
    
    init(weight: Int, height: Int) {
        Room.size = Size(weight: weight, height: height)
    }
    
    func addPerson(person: Person) {
        self.person = person
    }
    
    func addBox(box: Box) {
        Room.box = box
    }
    
    func addGoal(goal: Goal) {
        Room.goal = goal
    }
    
    func showRoom() {
        print("Person step: ", Person.step)
        for j in 0..<Room.size.height {
            for i in 0..<Room.size.weight {
                if person.point.x == i && person.point.y == j {
                    print("🕺", terminator:"")
                } else if Room.box.point.x == i && Room.box.point.y == j {
                    print("\u{2B1B}", terminator:"")
                } else if Room.goal.point.x == i && Room.goal.point.y == j {
                    print("🥅", terminator:"")
                } else {
                    print("\u{2B1C}", terminator:"")
                }
            }
            print()
        }
        if Room.box.point.x == Room.goal.point.x && Room.box.point.y == Room.goal.point.y {
            print("You winner!")
        }
    }
}

class Person {
    var direction = Direction.stay
    var point: Point
    static var step = 0
    
    init(x: Int, y: Int) {
        point = Point(x: x, y: y)
    }
    
    func move(direction: Direction) {
        
        if Room.box.point.x == Room.goal.point.x && Room.box.point.y == Room.goal.point.y {
            Person.step = 0
            Room.size = Size(weight: 0, height: 0)
        } else {
            switch direction {
            case .left:
                if point.x >= 1 {
                    if point.x-1 == Room.box.point.x {
                        if Room.box.move(direction: Direction.left) {
                            point.x -= 1
                        }
                    } else {
                        point.x -= 1
                    }
                }
            case .right:
                if point.x < Room.size.weight-1 {
                    if point.x+1 == Room.box.point.x {
                        if Room.box.move(direction: Direction.right) {
                            point.x += 1
                        }
                    } else {
                        point.x += 1
                    }
                }
            case .up:
                if point.y >= 1 {
                    if point.y-1 == Room.box.point.y {
                        if Room.box.move(direction: Direction.up) {
                            point.y -= 1
                        }
                    } else {
                        point.y -= 1
                    }
                }
            case .down:
                if point.y < Room.size.height-1 {
                    if point.y+1 == Room.box.point.y {
                        if Room.box.move(direction: Direction.down) {
                            point.y += 1
                        }
                    } else {
                        point.y += 1
                    }
                }
            default:
                break
            }
            
            Person.step += 1
        }
    }
}

class Box {
    var direction = Direction.stay
    var point: Point
    
    init(x: Int, y: Int) {
        point = Point(x: x, y: y)
    }
    
    func move(direction: Direction) -> Bool {
        switch direction {
        case .left:
            if point.x >= 1 {
                point.x -= 1
                return true
            }
            return false
        case .right:
            if point.x < Room.size.weight-1 {
                point.x += 1
                return true
            }
            return false
        case .up:
            if point.y >= 1 {
                point.y -= 1
                return true
            }
            return false
        case .down:
            if point.y < Room.size.height-1 {
                point.y += 1
                return true
            }
            return false
        default:
            break
        }
        return false
    }
}

class Goal {
    var point: Point
    
    init(x: Int, y: Int) {
        point = Point(x: x, y: y)
    }
}

var person = Person(x: 1, y: 0)
var room = Room(weight: 3, height: 4)
var box = Box(x: 1, y: 1)
var goal = Goal(x: 1, y: 3)

room.addPerson(person: person)
room.addBox(box: box)
room.addGoal(goal: goal)
room.showRoom()

room.person.move(direction: Direction.down)
room.showRoom()

room.person.move(direction: Direction.down)
room.showRoom()
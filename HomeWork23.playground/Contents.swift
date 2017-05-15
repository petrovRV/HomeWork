class Human {
    var father: Man?
    var mother: Woman?
    var siblings: [Human]?
}

class Man: Human {
    func moveSofa() {
        print("I can move the sofa")
    }
}

class Woman: Human {
    func giveCommand() {
        print("You must to move sofa now!")
    }
}

func create() -> [AnyObject]{
    var humans = [Human]()
    for i in 0..<30 {
        humans.append(i % 2 == 0 ? Man() :Woman())
    }
    
    return humans
}

func addAdult(subject: AnyObject, to: AnyObject ) {
    if let human1 = to as? Human {
        switch subject {
        case let man as Man:
            human1.father = man
        case let woman as Woman:
            human1.mother = woman
        default:
            break
        }
    }
}

func addChildren(subject: [AnyObject], to: AnyObject) {
    if let human1 = to as? Human {
        human1.siblings = [Human]()
        for child in subject {
            switch child {
            case let man as Man:
                human1.siblings?.append(man)
            case let woman as Woman:
                human1.siblings?.append(woman)
            default:
                break
            }
        }
    }
}

func addRelative(humans: [AnyObject]) {
    addAdult(subject: humans[2], to: humans[0]) //add father
    addAdult(subject: humans[1], to: humans[0]) //add mother
    
    addAdult(subject: humans[4], to: humans[1])
    addAdult(subject: humans[3], to: humans[1])
    addChildren(subject: [humans[5], humans[6]], to: humans[1])
    
    addAdult(subject: humans[8], to: humans[2])
    addAdult(subject: humans[7], to: humans[2])
    addChildren(subject: [humans[9]], to: humans[1])
}

var humans = create()
addRelative(humans: humans)






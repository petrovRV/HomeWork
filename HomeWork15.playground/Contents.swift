/*1*/
struct File {
    
    var pathToFile: String
    var name: String
    static let maxSize = 50
    var type: FileType
    lazy var fileContent = ""
    
    var pathFull: String {
        return pathToFile + name
    }
    
    var size: Int {
        didSet {
            if size > File.maxSize {
                size = oldValue
            }
        }
    }
    
    enum FileType {
        case hide
        case show
    }
}

var file = File (pathToFile: "D://Images/", name: "animals", type: File.FileType.hide, fileContent: nil, size: 25)

print(file.pathFull)

/*2*/
enum colorSpectrum: Int {
    static let count = 3
    static let first = colorSpectrum.Blue
    static let last = colorSpectrum.Brown
    
    case Brown = 0xA52A2A
    case Green = 0x00FF00
    case Blue = 0x0000FF
}

print(colorSpectrum.count)

/*3*/
class Human {
    
    static var count = 0
    
    class Name {
        static var min: Int {
            return 3
        }
        static var max: Int {
            return 50
        }
    }
    
    class Surname {
        static var min: Int {
            return 3
        }
        static var max: Int {
            return 70
        }
    }
    
    class Age {
        static var min: Int {
            return 1
        }
        static var max: Int {
            return 100
        }
    }
    
    class Height {
        static var min: Double {
            return 20
        }
        static var max: Double {
            return 220
        }
    }
    
    class Weight {
        static var min: Double {
            return 10
        }
        static var max: Double {
            return 500
        }
    }
    
    var name: String {
        didSet {
            if countChar(name) < Name.min || countChar(name) > Name.max {
                name = oldValue
            }
        }
    }
    
    var surname: String {
        didSet {
            if countChar(surname) < Surname.min || countChar(surname) > Surname.min {
                surname = oldValue
            }
        }
    }
    
    var age: Int {
        didSet {
            if age < Age.min || age > Age.max {
                age = oldValue
            }
        }
    }
    
    var weight: Double {
        didSet {
            if weight < Weight.min || weight > Weight.max {
                weight = oldValue
            }
        }
    }
    
    var height: Double {
        didSet {
            if height < Height.min || height > Height.max {
                height = oldValue
            }
        }
    }
    
    init(name: String, surname: String, age: Int, weight: Double, height: Double) {
        self.name = name
        self.surname = surname
        self.age = age
        self.weight = weight
        self.height = height
        
        Human.count += 1
    }
}

func countChar(_ str: String) -> Int {
    return str.characters.count
}

var human1 = Human(name: "Yura", surname: "Petrov", age: 25, weight: 180, height: 80)
var human2 = Human(name: "Vasya", surname: "Pupkin", age: 34, weight: 160, height: 100)

print("Total human:", Human.count)
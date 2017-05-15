import Foundation

struct Student {
    /*1*/
    var firstName: String {
        didSet {
            firstName = firstName.capitalized
        }
    }
    
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                firstName = words[0]
            }
            
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    
    /*2*/
    struct DateOfBirth {
        var day: Int
        var month: Int
        var year: Int
    }
    
    var dateOfBirth: DateOfBirth
    
    //return age
    var age: Int {
        let now = getNow()
        var age = now.year - dateOfBirth.year
        if now.month < dateOfBirth.month || (now.month == dateOfBirth.month && now.day < dateOfBirth.day) {
            age -= 1
        }
        
        return age
    }
    
    //return studied years
    var studiedYears: Int {
        let now = getNow()
        let year = now.year - dateOfBirth.year
        
        return year > 6 ? year - 6 : 0
    }
}

//return now time
func getNow () -> (year: Int, month: Int, day: Int){
    let calendar = Calendar.current
    let components = calendar.dateComponents([.year, .month, .day], from: Date())
    
    return (components.year!, components.month!, components.day!)
}

/*1*/
var student = Student(firstName: "Yura", lastName: "Petrov", dateOfBirth: Student.DateOfBirth(day: 10, month: 05, year: 2005))
print(student.fullName)

student.fullName = "Roma Skorohod"
print(student.fullName)

/*2*/
print(student.age)
print(student.studiedYears)

/*3*/
struct LineSegment {
    
    struct A {
        var x: Double
        var y: Double
    }
    
    struct B {
        var x: Double
        var y: Double
    }
    
    var a: A
    var b: B
    
    var middle: (x: Double,y: Double) {
        
        get {
            return ((a.x + b.x) / 2, (a.y + b.y) / 2)
        }
        
        set (point){
            let x = point.x - middle.x
            let y = point.y - middle.y
            a.x += x
            b.x += x
            
            a.y += y
            b.y += y
        }
    }
    
    var long: Double {
        
        get {
            return sqrt(pow((a.x - b.x), 2) + pow((a.y - b.y), 2))
        }
        
        set {
            b.x = a.x + (b.x - a.x) * newValue / long
            b.y = a.y + (b.y - a.y) * newValue / long
        }
    }
}

var a = LineSegment.A(x: 1, y: 3)
var b = LineSegment.B(x: 4, y: 6)

var lineSegment = LineSegment(a: a, b: b)

print(lineSegment.middle)
print(lineSegment.long)

/*4*/
lineSegment.middle = (x: 2, y: 3)
print(lineSegment.a, lineSegment.b)

lineSegment.long = 10
print(lineSegment.a, lineSegment.b)

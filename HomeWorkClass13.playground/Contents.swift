/*1*/
class Student {
    
    var name: String
    var surName: String
    var dateOfBirth: String
    var averageScore: Double
    
    init(name: String, surName: String, dateOfBirth: String, averageScore: Double) {
        
        self.name = name
        self.surName = surName
        self.dateOfBirth = dateOfBirth
        self.averageScore = averageScore
    }
}

var journal = [ Student(name: "Yura", surName: "Petrov", dateOfBirth: "April 20 1992", averageScore: 4.8),
                Student(name: "Andrey", surName: "Petrov", dateOfBirth: "April 11 1982", averageScore: 1.8),
                Student(name: "Irina", surName: "Berezyuk", dateOfBirth: "February 6, 1989", averageScore: 2.5),
                Student(name: "Lyudmilka", surName: "Dubich", dateOfBirth: "December 18, 1995", averageScore: 4.9) ]


/*2*/
func showStudent(students: [Student]) {
    
    for i in 0..<students.count {
        print("\(i+1)) \(students[i].name) \(students[i].surName) \(students[i].dateOfBirth) \(students[i].averageScore) ")
    }
    print()
}

showStudent(students: journal)

/*3*/
let sortAverage = journal.sorted { $0.averageScore > $1.averageScore }
showStudent(students: sortAverage)

/*4*/

let sortSurname = journal.sorted {
    if $0.surName == $1.surName {
        $0.surName < $1.surName
    } else {
        $0.name < $1.name
    }
    return true
}

showStudent(students: sortSurname)

/*5*/
var journalMix = journal
journalMix[0].name = "name"
journalMix[0].surName = "surname"
journalMix[0].dateOfBirth = "date of birth"
journalMix[0].averageScore = 0.0

showStudent(students: journal)
showStudent(students: journalMix)
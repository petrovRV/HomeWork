import Foundation

/*1*/
struct Student {
    var name: String
    var surName: String
    var dateOfBirth: String
    var averageScore: Double
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
func randomNumber(numb: Int) -> Int{
    return Int(arc4random() % UInt32(numb))
}

func createMixJournal(students: [Student]) -> [Student] {
    var studentsNew = students
    let count = studentsNew.count
    let rnd = randomNumber
    for i in 0..<count {
        studentsNew[i].name = students[rnd(count)].name
        studentsNew[i].surName = students[rnd(count)].surName
        studentsNew[i].dateOfBirth = students[rnd(count)].dateOfBirth
        studentsNew[i].averageScore = students[rnd(count)].averageScore
    }
    
    return studentsNew
}

let journalMix = createMixJournal(students: journal)

showStudent(students: journal)
showStudent(students: journalMix)
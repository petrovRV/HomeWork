/*1*/
var students = ["Yura Petrov": 5, "Mariya Drozdyuk": 4, "Diana Kuzema": 3, "Olexandr Trotsko": 2, "Tonya Timofeeva": 1]

//1.1
students.updateValue(4, forKey: "Diana Kuzema")
students.updateValue(5, forKey: "Olexandr Trotsko")

students.updateValue(0, forKey: "Artur Markov")
students.updateValue(0, forKey: "Zhenya Drozdyuk")

students.removeValue(forKey: "Tonya Timofeeva")
students.removeValue(forKey: "Olexandr Trotsko")
print(students)

//1.2
var sum = 0.0, average = 0.0
for student in students {
    sum += Double(student.value)
}
average = sum / Double(students.count)
print("Sum: ", sum)
print("Average: ", average)

/*2*/
let months = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]

for (month, day) in months {
    print(month, ":",day)
}

for month in months {
    print(month.key, ":", month.value)
}

/*3*/
var board = [String : Bool]()
let letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
let numbers = ["1", "2", "3", "4", "5", "6", "7", "8"]

var cordinates: String, color: Bool
for var i in 0..<letters.count {
    for var j in 0..<numbers.count {
        cordinates = letters[i] + numbers[j]
        color = i % 2 != j % 2
        
        board.updateValue(color, forKey: cordinates)
    }
}
print(board)
import UIKit

/*1*/
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

//1.1
for daysMonths in days {
    print(daysMonths)
}

//1.2
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let countMonths = days.count
for i in 0..<countMonths {
    print(months[i], "has", days[i], "days")
}

//1.3
var tupleMonths = [(month: String, days: Int)]()
for i in 0..<countMonths{
    tupleMonths.append((months[i], days[i]))
}

for _months in tupleMonths {
    print(_months.month, "has", _months.days, "days")
}

//1.4
for _months in tupleMonths.reversed() {
    print(_months.month, "has", _months.days, "days")
}

//1.5
let selectedDate = (month: "April",days: 20)
var countDays = 0
for _months in tupleMonths {
    if _months.month == selectedDate.month {
        countDays += selectedDate.days
        break
    }
    countDays += _months.days
}

print(countDays)

/*2*/
var array = [42, 12, nil, 11, 52, nil]

//2.1
var sum = 0
for elem in array {
    if elem != nil {
        sum += elem!
    }
}
print(sum)

//2.2
sum = 0
for elem in array {
    if let el = elem {
        sum += el
    }
}
print(sum)

//2.3
sum = 0
for elem in array {
    sum += elem ?? 0
}
print(sum)

/*3*/
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var str = [String]()

for letter in alphabet.characters {
    str.insert(String(letter), at: 0)
}
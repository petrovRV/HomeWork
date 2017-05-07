/*1*/
var string = "dsj3i43j4irj32eirio4!@#!#@!#rjer5io34jr5e4jioj5ro4iew43io2413!@#!@ERWERERETEWR#$@$#!$REWREW"
var sumVowels = 0, sumNumbers = 0
var sumConsonants = 0, sumOther = 0
for char in string.unicodeScalars {
    switch char.value {
    case 65, 69, 73, 79, 85, 97, 101, 105, 111, 117:
        sumVowels += 1
    case 65...90, 97...122:
        sumConsonants += 1
    case 48...57:
        sumNumbers += 1
    default:
        sumOther += 1
    }
}

print("Sum vowels: ", sumVowels)
print("Sum consonants: ", sumConsonants)
print("Sum numbers: ", sumNumbers)
print("Sum other symbol: ", sumOther)

/*2*/
let personAge = 50
var youAre = ""
switch personAge {
case 0...5:
    youAre = "Baby"
case 0...12:
    youAre = "Young"
case 0...18:
    youAre = "teenager"
case 0...60:
    youAre = "grown"
case 0...100:
    youAre = "old"
default:
    youAre = "really very old"
}

print("You're \(youAre)")

/*3*/
let person = (name: "Юра", lastName: "Петров", patronymic: "Юрійович")
var call = ""
switch person {
case (let n , _, _) where n.hasPrefix("А") || n.hasPrefix("О"):
    call = n
case (let n, _, let p) where p.hasPrefix("В") || p.hasPrefix("Д"):
    call = n + " " + p
case (_, let l, _) where l.hasPrefix("Е") || l.hasPrefix("З"):
    call = l
default:
    call = person.name + " " + person.lastName + " " + person.patronymic
}

print("Привіт: ", call)

/*4*/
var ships = (x: 1, y: 1, w: 4, h: 1)
switch ships {
case (1, 1, 1...4, 1):
    print("dead")
default:
    print("not ship")
}



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
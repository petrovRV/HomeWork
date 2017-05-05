import UIKit

//1
let str1 = "56"
let str2 = "13"
let str3 = "dksldfjk23"
let str4 = "dsj21"
let str5 = "sd324"

//search sum
var sumInt = 0
sumInt += Int(str1) ?? 0
sumInt += Int(str2) ?? 0
sumInt += Int(str3) ?? 0
sumInt += Int(str4) ?? 0
sumInt += Int(str5) ?? 0

//creating strings for show
let val1 = Int(str1) != nil ? str1 : "nil"
let val2 = Int(str2) != nil ? str2 : "nil"
let val3 = Int(str3) != nil ? str3 : "nil"
let val4 = Int(str4) != nil ? str4 : "nil"
let val5 = Int(str5) != nil ? str5 : "nil"

//concatenation
var str = ""
str += val1 + " + "
str += val2 + " + "
str += val3 + " + "
str += val4 + " + "
str += val5 + " = "
str += String(sumInt)
print(str)

//interpolate
str = "\(val1) + \(val2) + \(val3) + \(val4) + \(val5) = \(sumInt)"
print(str)

//2
let (a, b, c, d, e) = ("\u{1F431}", "\u{1F432}", "\u{1F433}", "\u{1F434}", "\u{1F435}")
let strUnicode = a + b + c + d + e

let countSwift = strUnicode.characters.count
print("Swift: ", countSwift)

let countObjectC = (strUnicode as NSString).length
print("Object-C: ", countObjectC)

//3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let letter:Character = "e"
var index = 0
for char in alphabet.characters {
    if char == letter {
        break
    }
    index += 1
}

print("letter \(letter) has index:\(index)")
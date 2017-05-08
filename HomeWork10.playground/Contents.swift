/*1*/
func koala() -> String {
    return "🐨"
}

func camel() -> String {
    return "🐪"
}

func dolphin() -> String {
    return "🐬"
}
print(koala() + camel() + dolphin())

/*2*/
func getColor(pointStrX: String, pointY: Int) -> String {
    let pointX = Int(UnicodeScalar(pointStrX)!.value)
    let cordinates = (x: pointX, y: pointY)
    let res = cordinates.x % 2 == cordinates.y % 2
    
    return res ? "black" : "white"
}

var color1 = getColor(pointStrX: "a", pointY: 2)
var color2 = getColor(pointStrX: "A", pointY: 3)
print("Сoordinates first equals ", color1)
print("Color first equals ", color2)

/*3*/
func reverse(arr: [Int]) -> [Int] {
    return arr.reversed()
}

func reverse(variadic: Int...) -> [Int] {
    return reverse(arr: variadic)
}

var array = [1, 2, 3, 4, 5, 6, 7]
print(reverse(arr: array))

print(reverse(variadic: 1, 2, 3, 4, 5, 6, 7))

/*4*/
func reverseInout(arr: inout [Int]) {
    arr = arr.reversed()
}

var arrayInout = [1, 2, 3, 4, 5, 6, 7]
reverseInout(arr: &arrayInout)
print(arrayInout)

/*5*/
func stringUpgrade(str: inout String) {
    let numbers = ["48": "zero", "49": "one", "50": "two", "51": "three", "52": "four", "53": "five", "54": "six", "55": "seven", "56": "eight", "67": "nine"]
    var tmp = ""
    for char in str.unicodeScalars {
        switch char.value {
        case 65, 69, 73, 79, 85, 97, 101, 105, 111, 117:
            tmp += String(char).uppercased()
        case 65...90, 97...122:
            tmp += String(char).lowercased()
        case 48...57:
            tmp += numbers[String(char.value)]!
        default:
            tmp += ""
        }
        str = tmp
    }
}

var str = "21wejweriwoweREWREWRwsfro12#!@#!.;"
stringUpgrade(str: &str)
print(str)

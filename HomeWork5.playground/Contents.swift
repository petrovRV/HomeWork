import UIKit

//#1
let myDay = 20
let seconds = (31 + 28 + 31 + myDay) * 24 * 60 * 60
print(seconds)

//#2
var myMonth:Double = 10
var quarter = myMonth / 3
let res = Int(quarter.rounded(.up))
print(res)

//#3

let (a, b, c, d, e, f, g, h) = (1, 2, 3, 4, 5, 6, 7, 8)
let cordinates = (x: a, y: 2)

if cordinates.x % 2 == cordinates.y % 2 {
    print("black")
} else {
    print("white")
}
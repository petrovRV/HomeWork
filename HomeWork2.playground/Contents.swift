//: Playground - noun: a place where people can play

import UIKit

print(Int.min)
print(Int.max)
print(Int8.min)
print(Int8.max)
print(Int16.min)
print(Int16.max)
print(Int32.min)
print(Int32.max)

let int: Int = 10
let float: Float = 2.9
let double: Double = 4.2

let intSum: Int = int + Int(float) + Int(double)
let floatSum: Float = Float(int) + float + Float(double)
let doubleSum: Double = Double(int) + Double(float) + double

if Double(intSum) < doubleSum {
    print("double")
} else {
    print("int")
}
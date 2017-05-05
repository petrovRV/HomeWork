//: Playground - noun: a place where people can play

import UIKit

let str1 = Int("56")
let str2 = Int("13")
let str3 = Int("dksldfjk23")
let str4 = Int("dsj21")
let str5 = Int("sd324")

var sum = 0

if let number = str1{
    sum += number
}

if let number = str2{
    sum += number
}

if let number = str3{
    sum += number
}

if let number = str4{
    sum += number
}

if let number = str5{
    sum += number
}

sum = 0

if str1 != nil{
    sum += str1!
}

if str2 != nil{
    sum += str2!
}

if str3 != nil{
    sum += str3!
}

if str4 != nil{
    sum += str4!
}

if str5 != nil{
    sum += str5!
}



/*2*/

let tuplet : (statusCode: Int, message: String?, errorMessage:String?)

tuplet.statusCode = 450
tuplet.message = nil
tuplet.errorMessage = "error"

if tuplet.statusCode >= 200 && tuplet.statusCode <= 300 {
    if tuplet.message != nil {
        tuplet.message
    }
} else {
    if tuplet.errorMessage != nil {
        tuplet.errorMessage
    }
}

//check message
if tuplet.errorMessage != nil {
    tuplet.errorMessage
} else {
    tuplet.message
}

/*3*/

//Create students
var student1: (name: String, numberCar: String?, rating: Int?)

student1.name = "Yura"
student1.numberCar = "AA2312AB"
student1.rating = 4

var student2: (name: String, numberCar: String?, rating: Int?)

student2.name = "Olya"
student2.numberCar = "AA2312AB"
student2.rating = 4

var student3: (name: String, numberCar: String?, rating: Int?)

student3.name = "Misha"
student3.numberCar = nil
student3.rating = nil

var student4: (name: String, numberCar: String?, rating: Int?)

student4.name = "Oleg"
student4.numberCar = "AA2312AB"
student4.rating = nil

var student5: (name: String, numberCar: String?, rating: Int?)

student5.name = "Taras"
student5.numberCar = nil
student5.rating = 5

//show students
var student: String

//1
student = "Name: " + student1.name + " "
if student1.numberCar != nil {
    student += "Number car: " + student1.numberCar! + " "
} else {
    student += "Not car!"
}

if student1.rating != nil {
    student += "Rating: " + String(student1.rating!)
} else {
    student += " Not rating!"
}
print(student)

//2
student = "Name: " + student2.name + " "
if student2.numberCar != nil {
    student += "Number car: " + student2.numberCar! + " "
} else {
    student += "Not car! "
}

if student2.rating != nil {
    student += "Rating: " + String(student2.rating!)
} else {
    student += " Not rating!"
}
print(student)

//3
student = "Name: " + student3.name + " "
if student3.numberCar != nil {
    student += "Number car: " + student3.numberCar! + " "
} else {
    student += "Not car! "
}

if student3.rating != nil {
    student += "Rating: " + String(student3.rating!)
} else {
    student += " Not rating!"
}
print(student)

//4
student = "Name: " + student4.name + " "
if student4.numberCar != nil {
    student += "Number car: " + student4.numberCar! + " "
} else {
    student += "Not car! "
}

if student4.rating != nil {
    student += "Rating: " + String(student4.rating!)
} else {
    student += " Not rating!"
}
print(student)

//5
student = "Name: " + student5.name + " "
if student5.numberCar != nil {
    student += "Number car: " + student5.numberCar! + " "
} else {
    student += "Not car! "
}

if student5.rating != nil {
    student += "Rating: " + String(student5.rating!)
} else {
    student += " Not rating!"
}
print(student)
//: Playground - noun: a place where people can play

import UIKit

let myTuples = (maxNumberOfPushUps: 200, maxNumberOfPullUps: 250, maxNumberOfSitUps: 300)

print(myTuples.0)
print(myTuples.1)
print(myTuples.2)

print(myTuples.maxNumberOfPushUps)
print(myTuples.maxNumberOfSitUps)
print(myTuples.maxNumberOfPullUps)

var andriykoTuples = myTuples

andriykoTuples.maxNumberOfPullUps = 300
andriykoTuples.maxNumberOfPushUps = 400
andriykoTuples.maxNumberOfSitUps = 500

var difference = myTuples

difference.0 = myTuples.0 - andriykoTuples.0
difference.1 = myTuples.1 - andriykoTuples.1
difference.2 = myTuples.2 - andriykoTuples.2

print(andriykoTuples)
print(myTuples)
print(difference)
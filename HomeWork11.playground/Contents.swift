/*1*/
func getClosure(closure: () -> ()) {
    for i in 1...10 {
        print(i)
    }
    closure()
}
getClosure (closure: {print("Call closure")})

/*2*/
var array = [1, 3, 31, 2 ,3 ,2 , 32, 11, 12, 6]
print(array.sorted(by: {$0 < $1}))
print(array.sorted(by: {$0 > $1}))

/*3*/
array = [1,2 ,3 ,2 , 32, 11, 12]

func getInt(arr:[Int], closure: ( Int, Int?) -> Bool) -> Int {
    var tmp: Int?
    for val in arr {
        if tmp == nil || closure(val, tmp){
            tmp = val
        }
    }
    
    return tmp ?? 0
}
print("max: ", getInt(arr: array, closure: { $0 > $1! }))
print("min: ", getInt(arr: array, closure: { $0 < $1! }))

/*4*/
var str = "dsjdfsjkdfsjkEWRAEFDSA#432432423#@$!@#$!"
var strUS = [UnicodeScalar]()
for char in str.unicodeScalars {
    strUS.append(char)
}

func priority (char: UnicodeScalar) -> Int {
    switch char.value {
    case 65, 69, 73, 79, 85, 97, 101, 105, 111, 117:
        return 0
    case 65...90, 97...122:
        return 1
    case 48...57:
        return 2
    default:
        return 3
    }
}

let sortArray = strUS.sorted{
    switch(priority(char: $0), priority(char: $1)) {
    case let (x, y) where x < y: return true
    case let (x, y) where x > y: return false
    default:
        return String($0).lowercased() <= String($1).lowercased()
    }
}

print(sortArray)

/*5*/
let arrayStr = ["f", "A", "s", "k", "m"]

func getStr(arr:[String], closure: ( String, String?) -> Bool) -> String {
    var tmp: String?
    for val in arr {
        if tmp == nil || closure(val, tmp){
            tmp = val
        }
    }
    
    return tmp ?? ""
}
print("max: ", getStr(arr: arrayStr, closure: { $0 > $1! }))
print("min: ", getStr(arr: arrayStr, closure: { $0 < $1! }))
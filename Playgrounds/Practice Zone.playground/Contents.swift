//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//let x = Optional<String>.None
//
//
//let s = Optional<Int>.Some(12736)

print(s)

s!

print(s!)

struct Rectangle {
    var length = 12
    var width = 8 { didSet { print(area) } }
    
    var area:Int {
        get{
            return length * width
        }
        set{
            width = newValue * 13
        }
    }
}

let obj = Rectangle()

var rect = obj



rect.area

print(rect.width)

rect.area = 89

rect.width

rect.width = 12

rect.area

//rect.width = 9

var happiness: Int = 50 { // 0 = very sad, 100 = ecstatic
didSet {
    happiness = min(max(happiness, 0), 100)
}
}

happiness = 110

switch happiness {
case 110: fallthrough
case 132: happiness = 40
default: print("nothing")
}

print(happiness)




var word = "nothing"

//var dummy = word.startIndex.distanceTo(word.endIndex)
//
//
//
//word = word[word.startIndex..<word.endIndex.predecessor()]
//print(word)


//CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)

arc4random()





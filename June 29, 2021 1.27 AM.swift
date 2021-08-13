import Cocoa
//import Foundation

//  part1
print("hi printfunc1")

//  part2
let maximumNumberOfLoginAttempts = 3
var currentLoginAttempt = 0
var varDoub1 = 0.0, varDoub2 = 0.0, varDoub3 = 0.0

//  part3
//      Type annotation = hold var/constant, assign an explicit type
var welcomeMessage: String
welcomeMessage = "hi"

var red, green, blue: Double
let π = 3.1415926
let 你好: String
let 👽: String = "👽👽 alien let"
print(👽)

//  part4
print("current attempt \(currentLoginAttempt) out of \(maximumNumberOfLoginAttempts)")

//  part5
    // comm
    /*
    block
        /* */
        block
    */

// part6
let age = 31
let minUInt8 = UInt8.min    // 2^0-1
let maxUInt8 = UInt8.max    // 2^8-1

print("min8bit: \(minUInt8); max8bit: \(maxUInt8)")

let float1: Float = 3.1415926
let πDoub: Double = 3.1415926

let decInteger1: Int = 1
let binaryInteger2 = 0b000010
let octalInteger3 = 0o003
let hexInteger4 = 0x4

let decDoub: Double = 123
let exponentDoub: Double = 1.23e2
let hexDoub = 0x7Bp0

/* calc dec: Base10
oct: Base8
hex: Base16
Bin: Base2 */

let decMil: Int = 1_000_000
let binaryMil: Int = 0b11110100001001000000
let octMil: Int = 0o3641100
let hexMil: Int = 0xF4240

/*let uInt8Overflow255+1 = UInt8.max + 1*/
/*let illegalNegUInt8: UInt8 = -1*/

let decSeq: Int = 1234567890
let binSeq: Int = 0b01001001100101100000001011010010
let octSeq: Int = 0o11145401322
let hexSeq: Int = 0x499602D2

//  part7
let binOne: UInt8 = 0b1
let twoThousand: UInt16 = 2_000
let six: UInt8 = 6
let twoThousand6: UInt16 = twoThousand + UInt16(six)
let fourThousand12: UInt16 = (twoThousand + UInt16(six)) * 2
let twoFiftySix: UInt16 = UInt16(UInt8.max) + UInt16(binOne)

let πDoubRoundedInt = Int(πDoub)

//  part8
typealias randXNumber = UInt32
let randXNumber32Overflow = randXNumber.max

//  part9
let obviousImmutableStatementBoolYes = true
let obviousImmutableStatementBoolNo = false


private func ageCheck(age: Int) {
    var isAged: Bool
    if age >= 18 {
        isAged = true; print("\(isAged) you may come in")
    } else {
        isAged = false; print("\(isAged) you may not come in")
    }
}
ageCheck(age: 19)

//  part10
let HTTP404Error = (404, "not found!!!1!1!!!")
let (statusCode, statusMsg) = HTTP404Error
print("L103   HTTP Status Code is \(statusCode)")
print("L104   HTTP Server Response is \"\(statusMsg)\"")

    //
let (statusCodeOnly, _) = HTTP404Error
print("HTTP Status Code is \(statusCodeOnly). No server response")
print("HTTP Status Code is \(HTTP404Error.0). \"\(HTTP404Error.1)\"")

let tuple = ("tupleSub1", "tupleSub2")

let HTTP200OkNotice = (statusCode: 200, statusMsg: "OK")
print("L114   HTTP Response is \(HTTP200OkNotice.statusCode). \"\(HTTP200OkNotice.statusMsg)\"")

//  part 11
// nil

    //  nil = null (?!?!) - with caveats.

var ageString = "19"
let ageConvertedToInt = Int(ageString)

var possibleInt: Int = 404
// possibleInt = nil

//  part 12
if ageConvertedToInt != nil {
    print("Age is not empty, \(String(describing: ageConvertedToInt))")
    
    // use exclamation mark to display Optional() Ints, and much more
    print("Age is not empty, \(String(describing: ageConvertedToInt!))")
} else {
    print("Age is empty")
}
// can't use ! to print if its value is nil

//  part13

    // guard = neg if

    /*
    if let temp vars and stuff
 
    ej:
        if let x = y {do something, must be opt}
 
        var ifLetTestOptionalStringVar: String?
        ifLetTestOptionalStringVar = "dlsmfjdfslnlqwererty"
        if ifLetTestOptionalStringVar != nil {
            print("L159   test value isn't equal to nil, \"\(String(describing:ifLetTestOptionalStringVar))\"")
            } else {
            print("L161   test value is equal to nil")
        }
            */

//  part14
let optionalString: String? = "optional string"
let forcedString = optionalString!

let assumedString: String! = "! = assume based on an optional()"
let implicitString: String = assumedString

//  part15
func mayThrowError() throws {
    // error prone code goes here
}

do {
    try mayThrowError()
    //  successful routine
} catch {
    //  error handler routine
}

//  part16
/* asertions for debugging only; preconditions for building & debugging, and in prod */

let invalidValue: Int = -4
precondition(invalidValue <= 0, "Number is equal to zero or less. Disallowed")
// does this even work

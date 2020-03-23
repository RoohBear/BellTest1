// The days of the week are represented by a three-letter
// string("Mon","Tue","Wed","Thu","Fri","Sat","Sun").
//
// Write a function solution that, given a string S representing the day of
// the week and an integer K (0 and 500, inclusive), returns the day of the
// week that is K days later.
//
// Given S = "wed" and K = 2, the function should return "Fri".
// Given S = "Sat" and K = 23, the function should return "Mon"
//

// This app written in Swift on March 20 by Greg Wishart
import Foundation

let result1 = test(dayOfWeek:"wed", K:2)
print("Result 1 = \(result1)")

let result2 = test(dayOfWeek:"Sat", K:23)
print("Result 2 = \(result2)")

func test(dayOfWeek:String, K:Int) -> String
{
    var nDay = dayOfWeekAsInt(dayOfWeek:dayOfWeek)
    var k = K

    while (k != 0) {
        nDay = nDay + 1;
        if (nDay > 6) {
            nDay = 0
        }
        k = k - 1
    }
    
    return dayOfWeekAsString(dayOfWeek:nDay)
}

func dayOfWeekAsInt(dayOfWeek:String) -> Int
{
    if(dayOfWeek.lowercased() == "mon") {return 0}
    if(dayOfWeek.lowercased() == "tue") {return 1}
    if(dayOfWeek.lowercased() == "wed") {return 2}
    if(dayOfWeek.lowercased() == "thu") {return 3}
    if(dayOfWeek.lowercased() == "fri") {return 4}
    if(dayOfWeek.lowercased() == "sat") {return 5}
    if(dayOfWeek.lowercased() == "sun") {return 6}

    return -1;
}

func dayOfWeekAsString(dayOfWeek:Int) -> String
{
    if(dayOfWeek == 0) {return "Mon"}
    if(dayOfWeek == 1) {return "Tue"}
    if(dayOfWeek == 2) {return "Wed"}
    if(dayOfWeek == 3) {return "Thu"}
    if(dayOfWeek == 4) {return "Fri"}
    if(dayOfWeek == 5) {return "Sat"}
    if(dayOfWeek == 6) {return "Sun"}
    
    return ""
}


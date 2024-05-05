import Cocoa

let day = "Monday"
print("Today is \(day)") // string interpolation

let hour = "6"
let minutes = "15"
let period = "PM"

// String concatetion
var time = hour + ":" + minutes + " " + period
print("It is \(time)")
print("It is \(time) on \(day)")
let timezone = "PST"
time += " \(timezone)"
print("It is \(time) on \(day)")

// String prefix
let shortDay = day.prefix(3)
print("Today is \(shortDay)")
print("It is \(time) on \(shortDay)")

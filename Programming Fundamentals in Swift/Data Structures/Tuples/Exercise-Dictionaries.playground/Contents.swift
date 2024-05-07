import Cocoa

var weeklyTemperatures : [String : Int] = [:]// empty dictionary
weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
weeklyTemperatures["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)ºF.")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
}


if weeklyTemperatures.count == 7 {
    print("You have access the whole week's temperature data!")
    for day in weeklyTemperatures.keys.sorted() {
        print("     The temperature on \(day) is \(weeklyTemperatures[day]!)°F.")
    }
    weeklyTemperatures = [:] // reset for the next week
    print("Reset whole temperature for next week!")
} else {
    print("Week not full!")
}

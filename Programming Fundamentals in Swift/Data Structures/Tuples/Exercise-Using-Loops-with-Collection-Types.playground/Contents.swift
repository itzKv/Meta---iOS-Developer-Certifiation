import Cocoa

let levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {
    print("It's level \(level+1) with score of \(score)")
}

var gameScore = 0
for levelScore in levelScores {
   gameScore += levelScore
}
print("Final game's score is \(gameScore)")

let weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100]
for (day, temperature) in weeklyTemperatures {
    print("Temperature on \(day) is \(temperature)ºF")
}

let days =  ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]
for current in 0...days.count-1 {
    print("Today is \(days[current]) and the temperature is \(temperatures[current])ºF")
}



import Cocoa

let freeApp = true

if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80

if morningTemperature < eveningTemperature {
    print("It is colder in the morning.")
}
else {
    print("It is colder in the evening.")
}

let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fahrenheit" {
    print("Fahrenheit")
}
else {
    print("Celcius")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celcius" {
    print("The temperature is configured clearly")
} else{
    print("The temperature is not configured!")
}

// Switch Statement
switch temperatureDegree {
    case "Fahrenheit":
        print(temperatureDegree)
    case "Celcius":
        print(temperatureDegree)
    default:
        print("Unknown")
}

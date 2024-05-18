class Circle {
    let diameter: Double
    let pi: Double = 3.14
    
    var area : Double {
        pi * diameter/2 * diameter/2
    }
    
    var perimeter: Double {
        2 * pi * diameter/2
    }
    
    init(diameter: Double) {
        self.diameter = diameter
    }
}


let circle = Circle(diameter: 7)

print(circle.area)

class Calculator {
    func Divide(x: Double, y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divisionByZero
        }
        return x / y
    }
}

enum CalculatorError: Error {
    case divisionByZero
}

let calculator = Calculator()
do {
    let successfulResult = try calculator.Divide(x: 10, y: 5)
    print(successfulResult)
    
    let invalidResult = try calculator.Divide(x: 1, y: 0)
    print(invalidResult)
}
catch CalculatorError.divisionByZero {
   print("Division by zero detected and not allowed")
}

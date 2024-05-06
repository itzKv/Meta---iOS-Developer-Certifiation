import Cocoa

let (levels, freeLevels, bonusLevels) = (10, 4, 3)

for level in 1...levels {
    if level == bonusLevels {
        print("Skip bonus level: \(level)")
        continue
    }
    
    if level == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the remaining \(levels-level) levels")
        break
    }
    print("Play level \(level)")
}
    

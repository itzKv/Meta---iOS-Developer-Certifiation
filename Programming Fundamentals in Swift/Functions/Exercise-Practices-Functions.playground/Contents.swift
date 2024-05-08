import Cocoa

var goldBars = 0


func unlockTreasureChest (inventory: Int) -> Int {
    return inventory + 100
}

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

goldBars = unlockTreasureChest(inventory: goldBars)
print(goldBars)

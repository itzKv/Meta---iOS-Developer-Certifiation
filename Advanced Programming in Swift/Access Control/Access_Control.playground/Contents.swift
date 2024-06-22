// Access modifier itu ada 5:
/*
 1. private -> ga bisa diakses sama yang lain samsek
 2. fileprivate -> bisa diakses kalo sama dengan source filenya
 3. internal -> Ini settingan default. Jadi file di modul yang sama yg bsa akses
 4. public -> Bisa diakses oleh modul lain. Cuman modul lain gabisa subclass dan override
 5. open -> Bisa diakses sma modul lain dan modul lain bisa subclass dan override.
 */
 
class SecretFood {
    private var secretIngredients: [String] = []
    fileprivate func readSecretIngredients() {
        print("Secret Ingredients:")
        print(secretIngredients)
    }
}

class Chef {
    func cookSecretFood(_ secretFood: inout SecretFood) {
        print(secretFood.readSecretIngredients())
    }
}

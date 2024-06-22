var pastaTypesSet = Set<String>()
pastaTypesSet.insert("Tagliatelle")
pastaTypesSet.insert("Fettuccine")
pastaTypesSet.insert("Spaghetti")
pastaTypesSet.insert("Linguine")
// Di set itu, gaada order buat datanya

print(pastaTypesSet)
print(pastaTypesSet.count)

// Kalo remove, yauda main remove aja wkwkwk
pastaTypesSet.remove("Spaghetti")
print(pastaTypesSet)

// Bisa juga pakai UNION buat gabung antar Set
var pastaTypesSet2 = Set<String>()
pastaTypesSet2.insert("Tortellini")
pastaTypesSet2.insert("Ziti")
pastaTypesSet2.insert("Tagliatelle") // ini ga bakal union, karena Set itu unique element
pastaTypesSet2.insert("Lasagna")

let pastaSetUnion = pastaTypesSet.union(pastaTypesSet2)
print(pastaSetUnion)
print(pastaSetUnion.count)


enum PastaTypes: Int {
    case spaghetti
    case penne
    case ravioli
    case rigatoni
}

print(PastaTypes.penne.rawValue)

let reservationsInPerson: Set = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone: Set = ["000-345-6223", "000-345-7223"]
let reservationsOverInternet: Set = ["000-345-3443", "000-345-5223"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)


var confirmationCodes = Set<String>()
confirmationCodes.insert("LL3450")
confirmationCodes.insert("LL3451")
confirmationCodes.insert("LL3452")
confirmationCodes.insert("LL3453")
confirmationCodes.insert("LL3454")
print(allPhoneNumbers.count)
print(confirmationCodes.count)

allPhoneNumbers.remove("000-345-3442")
print(allPhoneNumbers.count)

// MAP
//struct User {
//    let id: Int
//    let name: String
//}
//
//let users = [
//    User(id: 1, name: "John"),
//    User(id: 2, name: "Tom")
//]
//
//let usersIds = users.map { user in
//    return user.id
//}
// Result of the usersIds will be [1,2] holding id each other.

// The shorter version of map is using $0 default parameter
//let usersids = users.map { $0.id }


// COMPACT MAP
// compact map itu bisa ngehasilin nil, tapi harus diingat kalo compact map itu hanya return non-nil sebagai return array
//let urlsAsStrings = ["https://www.google.com", "not a valid url"]
//let urlsOrNil = urlsAsStrings.map { URL(string: $0) }
//let urls = urlsAsStrings.compactMap { URL(string: $0) }


// FLAT MAP
//flatMap is another special type of map that is useful in the following cases:
//
//The mapping closure returns an array of elements rather than just a single element, and
//
//The final resulting array must be a one-dimensional array.   This means that there must not be an array inside of an array.

//struct User {
//    let id: Int
//    let name: String
//    let languages: [String]
//}
//
//let users = [
//    User(id: 1, name: "John", languages: ["English", "German"]),
//    User(id: 2, name: "Tom", languages: ["Russian", "Spanish"])
//]
//
//let allLanguages = users.flatMap { $0.languages }

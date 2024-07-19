import Foundation

let recipesJSONString = """
[
    {
        "title": "Apple pie",
        "views": 3847,
        "rating": 4.5
    },
    {
        "title": "Boiled egg",
        "views": 10584,
        "rating": 4.9
    },
    {
        "title": "Bacon roll",
        "views": 5847,
        "rating": 3.2
    }
]
"""
//print("JSON string length: \(recipesJSONString.count)")
//
//if let data = recipesJSONString.data(using: .utf8) {
//    print("Successfully converted to Data. Byte count: \(data.count)")
//    
//    do {
//        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
//            print("Successfully parsed JSON. Array count: \(json.count)")
//        } else {
//            print("Failed to cast JSON to expected type")
//        }
//    } catch {
//        print("JSON parsing failed: \(error)")
//    }
//} else {
//    print("Failed to convert string to Data")
//}
//
struct Recipe: Decodable {
    let title: String
    let rating: Double
    let views: Int
}

let recipesData = Data(recipesJSONString.utf8)
let decoder = JSONDecoder()
do {
    let recipes = try decoder.decode([Recipe].self, from: recipesData)
    recipes.forEach {
        print("\($0.title) with a rating of \($0.rating)")
    }
} catch {
    print("Decoding failed: \(error)")
}

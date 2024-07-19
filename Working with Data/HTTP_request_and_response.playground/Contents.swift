import Foundation

let littleLemonAddress: String = "https://raw.githubusercontent.com/Meta-Mobile-Developer-PC/Working-With-Data-API/main/littleLemonSimpleMenu.json"

let url = URL(string: littleLemonAddress)
// the url will return URL? Hence we need to unwrap it

guard let url = url else { throw NSError() }

let request = URLRequest(url: url)

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data,
       let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()

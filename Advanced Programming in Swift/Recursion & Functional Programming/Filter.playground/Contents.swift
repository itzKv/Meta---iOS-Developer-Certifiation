/*
 When using a filter function on an array, items are filtered or removed from the array.
 This returns a smaller array with the same types of elements. It is very convenient to use filter to separate the same types of elements by a certain condition
*/

struct Article {
    let title: String
    let isPublished: Bool
}

let articles = [
    Article(title: "Breaking news", isPublished: true),
    Article(title: "Local news", isPublished: true),
    Article(title: "Unconfirmed", isPublished: false),
]

let unpublishedArticles = articles.filter { $0.isPublished == false }

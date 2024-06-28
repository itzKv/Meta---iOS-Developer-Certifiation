//let donationsInformation  = ["John" : 56, "Tom": 15, "Charlie": 104]
//let donationsTexts = donationsInformation.map { "\($0.key) has donated \($0.value) so far"}
//for text in donationsTexts {
//    print(text)
//}

// Instead of writing like this, For-In offers longer lines


let donationsInformation  = ["John" : 56, "Tom": 15, "Charlie": 104]

donationsInformation.map {"\($0.key) has donated \($0.value) so far"}
    .forEach{ print($0) }

donationsInformation.filter {$0.value > 50}
    .forEach{ print($0.key) }

// Note that only either key or value could be passed here.
donationsInformation.map {($0.key) }.filter {$0.starts(with: "T")}
    .forEach{ print($0) }

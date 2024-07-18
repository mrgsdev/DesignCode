import UIKit

var authors = ["Meng To", "Surya Anand", "Sai Kambampati"]

//"Taught by Meng To, Surya Anand and Sai lambampati"

func serialized(array: [String]) -> String {
    
    array.count <= 2 ? array.joined(separator: " and ") : array.dropLast().joined(separator: " , ") + ", and " + array.last!
}
serialized(array: authors)

extension BidirectionalCollection where Element: StringProtocol {
    var serialized:String {
        count <= 2 ? joined(separator: " and ") :
        dropLast().joined(separator: " , ") + ", and " + last!
    }
}

authors.serialized

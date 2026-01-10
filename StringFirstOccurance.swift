import Foundation

class StringFirstOccurrence {
    func getIndex(haystack: String, needle: String) -> Int {
        guard !haystack.isEmpty, !needle.isEmpty else {
            return -1
        }

        guard haystack.contains(needle) else {
            return -1
        }

        if let range = haystack.range(of: needle) {
            let index = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
            return index
        } else {
            return -1
        }
    }
}

let stringFirstOccurrence = StringFirstOccurrence()
let index = stringFirstOccurrence.getIndex(haystack: "hello", needle: "ll")
print(index)

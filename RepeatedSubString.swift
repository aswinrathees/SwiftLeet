class RepeatedSubString {

    func isRepeated(_ s: String) -> Bool {
        let doubled = s + s
        let range = doubled.index(after: doubled.startIndex)..<doubled.index(before: doubled.endIndex)
        return doubled[range].contains(s)
    }
}

let repeatedSubString = RepeatedSubString()
let result = repeatedSubString.isRepeated("abcabc")
print(result) // Output: true
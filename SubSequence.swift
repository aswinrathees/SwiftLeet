class SubSequence {

    func isSubSequence(_ s: String, _ t: String) -> Bool {
        var sIndex = s.startIndex

        for char in t {
            if sIndex < s.endIndex, s[sIndex] == char {
                sIndex = s.index(after: sIndex)
            }
        }

        return sIndex == s.endIndex
    }
}

let subsequence = SubSequence()
let result = subsequence.isSubSequence("abc", "ahbgdc")
print(result)
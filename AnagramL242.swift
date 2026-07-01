/**
 An anagram is a word or phrase formed by rearranging the letters of a different word or phrase, using all the original letters exactly once.
**/

class AnagramL242 {

    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var charCount: [Character: Int] = [:]

        for char in s {
            charCount[char, default: 0] += 1
        }

        for char in t {
            charCount[char, default: 0] -= 1
            if charCount[char]! < 0 {
                return false
            }
        }

        return true
    }
}

let anagram = Anagram()
let result = anagram.isAnagram("anagram","nagaram")
print(result)
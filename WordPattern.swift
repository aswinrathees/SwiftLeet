class WordPattern {

    func isPatternFollowed(_ pattern: String, _ s: String) -> Bool {
        let words = s.split(separator: " ")
        let patternArray = Array(pattern)
        
        guard words.count == patternArray.count else { return false }
        
        var charToWord: [Character: String] = [:]
        var wordToChar: [String: Character] = [:]
        
        for (ch, word) in zip(patternArray, words) {
            if let mappedWord = charToWord[ch], mappedWord != word {
                return false
            }
            if let mappedChar = wordToChar[String(word)], mappedChar != ch {
                return false
            }
            charToWord[ch] = String(word)
            wordToChar[String(word)] = ch
        }
        
        return true
    }
}

let wordPattern = WordPattern()
let result = wordPattern.isPatternFollowed("abba", "dog cat cat dog")
print(result) // Output: true
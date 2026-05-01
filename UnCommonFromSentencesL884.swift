class UnCommonFromSentencesL884 {

    func getWords(_ s1: String, _ s2: String) -> [String] {
        var freq: [String: Int] = [:]
        
        let words = s1.split { $0.isWhitespace }.map(String.init) +
                    s2.split { $0.isWhitespace }.map(String.init)
        
        for word in words {
            freq[word, default: 0] += 1
        }
        
        return freq.filter { $0.value == 1 }.map { $0.key }
    }
}

let unCommonFromSentences = UnCommonFromSentencesL884()
let result = unCommonFromSentences.getWords("this apple is sweet", "this apple is sour")
print(result)
class ReverseWordsInStringThree {

    func reverseWords(_ s: String) -> String {
        let words = s.split(separator: " ")
        let reversedWords = words.map { String($0.reversed()) }
        return reversedWords.joined(separator: " ")

        // Alternatively, you can use a more concise approach:
        // return s.components(separatedBy: .whitespaces).map { String($0.reversed()) }.joined(separator: " ")
    }
}

let reverseWordsInStringThree = ReverseWordsInStringThree()
let result = reverseWordsInStringThree.reverseWords("Hello World")
print(result)
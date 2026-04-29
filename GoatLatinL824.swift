class GoatLatinL824 {

    func getNewString(_ sentence: String) -> String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let words = sentence.split { $0.isWhitespace }.map(String.init)
        var result: [String] = []

        for (index, word) in words.enumerated() {
            let first = word.first!.lowercased()
            var newWord: String

            if vowels.contains(Character(first)) {
                newWord = word
            } else {
                newWord = String(word.dropFirst()) + String(word.prefix(1))
            }

            newWord += "ma"
            newWord += String(repeating: "a", count: index + 1)
            result.append(newWord)
        }

        return result.joined(separator: " ")
    }
}

let goatLatin = GoatLatinL824()
let result = goatLatin.getNewString("I speak Goat Latin")
print(result) // Output: "Imaa peaksmaaa oatGmaaaa atinLmaaaaa"
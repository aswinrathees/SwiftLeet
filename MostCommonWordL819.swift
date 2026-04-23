class MostCommonWordL819 {

    func getWord(_ paragraph: String, _ banned: [String]) -> String {
        let words = paragraph.lowercased().split { $0.isLetter == false }
        var frequency = [String: Int]()

        for word in words where banned.contains(String(word)) == false {
            frequency[String(word), default: 0] += 1
        }

        let filtered = frequency.sorted { $0.value > $1.value }.map { $0.key }
        return filtered[0]
    }
}

let mostCommonWord = MostCommonWordL819()
let result = mostCommonWord.getWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"])
print(result) // Output: "ball"
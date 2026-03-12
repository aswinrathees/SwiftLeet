class KeyboardRow {

    func getWords(_ words: [String]) -> [String] {
        let row1 = Set("qwertyuiop")
        let row2 = Set("asdfghjkl")
        let row3 = Set("zxcvbnm")
        let rows = [row1, row2, row3]
        
        return words.filter { word in
            let lower = word.lowercased()
            for row in rows {
                if lower.allSatisfy(row.contains) {
                    return true
                }
            }
            return false
        }
    }
}

let keyboardRow = KeyboardRow()
let words = ["Hello", "Alaska", "Dad", "Peace"]
let result = keyboardRow.getWords(words)
print(result) // Output: ["Alaska", "Dad"]
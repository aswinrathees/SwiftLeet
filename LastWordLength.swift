import Foundation

class LastWordLength {

    func getLastWordlength(_ sentence: String) -> Int {
        guard sentence.count > 0 else {
            return 0
        }

        let words = sentence.components(separatedBy: .whitespaces).filter { !$0.isEmpty }
        return words.last?.count ?? 0
    }
}

let lastWordLength = LastWordLength()
let length = lastWordLength.getLastWordlength("Hello World ")
print(length)

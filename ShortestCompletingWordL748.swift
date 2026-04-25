class ShortestCompletingWordL748 {

    func getWord(_ licensePlate: String, _ words: [String]) -> String {
        // Count required letters from licensePlate (case-insensitive, letters only)
        var licenseFreq: [Character: Int] = [:]
        for ch in licensePlate.lowercased() {
            if ch.isLetter {
                licenseFreq[ch, default: 0] += 1
            }
        }

        var answer = ""

        for word in words {
            let lower = word.lowercased()
            // Skip if we already have a shorter or equal answer
            if !answer.isEmpty && word.count >= answer.count {
                continue
            }

            // Count letters in current word
            var wordFreq: [Character: Int] = [:]
            for ch in lower {
                wordFreq[ch, default: 0] += 1
            }

            // Check if word covers all required letters
            var isCompleting = true
            for (ch, need) in licenseFreq {
                if wordFreq[ch, default: 0] < need {
                    isCompleting = false
                    break
                }
            }

            if isCompleting {
                answer = word
            }
        }

        return answer
    }
}

let shortestCompletingWord = ShortestCompletingWordL748()
let result = shortestCompletingWord.getWord("1s3 PSt", ["step", "steps", "stripe", "stepple"])
print(result) // Output: "steps"
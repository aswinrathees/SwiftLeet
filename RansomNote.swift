class RansomNote {

    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard !ransomNote.isEmpty else { return true }
        guard !magazine.isEmpty else { return false }

        var counts: [Character: Int] = [:]

        for ch in magazine {
            counts[ch, default: 0] += 1
        }

        for ch in ransomNote {
            guard let count = counts[ch], count > 0 else { return false }
            counts[ch] = count - 1
        }
        return true
    }
}
let ransomNote = RansomNote()
let result = ransomNote.canConstruct("aa", "aab")
print(result)

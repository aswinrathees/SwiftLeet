class ReverseVowels {

    func getReversedString(_ s: String) -> String {
        let vowels = Set(["a", "e", "i", "o", "u"])
        var chars = Array(s)
        var left = 0
        var right = s.count - 1

        while left < right {

            while left < right && !vowels.contains(String(chars[left]).lowercased()) {
                left += 1
            }

            while left < right && !vowels.contains(String(chars[right]).lowercased()) {
                right -= 1
            }

            if left < right {
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }
        }
        return String(chars)
    }
}

let reverseVowels = ReverseVowels()
let result = reverseVowels.getReversedString("IceCreAm")
print(result)
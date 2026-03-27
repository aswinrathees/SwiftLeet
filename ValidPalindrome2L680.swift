class ValidPalindrome2L680 {

    func isValidPalindrome(_ s: String) -> Bool {
        let chars = Array(s)
        var left = 0
        var right = chars.count - 1

        while left < right {
            if chars[left] != chars[right] {
                return isPalindrome(chars, left + 1, right) || isPalindrome(chars, left, right - 1)
            }
            left += 1
            right -= 1
        }

        return true
    }

    private func isPalindrome(_ chars: [Character], _ l: Int, _ r: Int) -> Bool {
        var i = l, j = r
        while i < j {
            if chars[i] != chars[j] {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}

let validPalindrome = ValidPalindrome2L680()
let result = validPalindrome.isValidPalindrome("abca")
print(result) // Output: true
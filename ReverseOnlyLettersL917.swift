class ReverseOnlyLettersL917 {
    
	func getNewString(_ s: String) -> String {
        // Convert to array of characters for in-place modification
        var chars = Array(s)
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            if !chars[left].isLetter {
                left += 1
            } else if !chars[right].isLetter {
                right -= 1
            } else {
                // Swap letters
                chars.swapAt(left, right)
                left += 1
                right -= 1
            }
        }
        
        return String(chars)
    }
}

let reverseOnlyLettersL917 = ReverseOnlyLettersL917()
let result = reverseOnlyLettersL917.getNewString("ab-cd")
print(result)

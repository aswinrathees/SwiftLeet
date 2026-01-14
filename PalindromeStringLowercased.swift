class PalindromeStringLowercased {

    func isPalindrome(_ s: String) -> Bool {
        guard !s.isEmpty else { return true }

        let filteredString = s.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).joined()
        let reveresedString = String(filteredString.reversed())

        return filteredString == reveresedString
    }
}


let palindromeChecker = PalindromeStringLowercased()
let isPalindrome = palindromeChecker.isPalindrome("A man, a plan, a canal: Panama")
print(isPalindrome)
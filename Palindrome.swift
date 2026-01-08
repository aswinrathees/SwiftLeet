class Palindrome {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var num = x
        var newNumber = 0
        while num > 0 {
            let temp = num % 10
            newNumber = (newNumber * 10) + temp
            num /= 10
        }
        return x == newNumber
    }
}

let palindrome = Palindrome()
let isPalindrome = palindrome.isPalindrome(-121)
print(isPalindrome)

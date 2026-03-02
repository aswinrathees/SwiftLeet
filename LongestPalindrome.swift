class LongestPalindrome {

    func getLongest(_ s: String) -> Int {
        var dict = [Character: Int]()

        for char in s {
            dict[char, default: 0] += 1
        }

        var ans = 0
        var hasOdd = false

        for (_, el) in dict.enumerated() {
            if el.value % 2 == 0 {
                ans += el.value
            } else {
                ans += el.value - 1
                hasOdd = true
            }
        }

        return hasOdd ? ans + 1 : ans
    }
}

let longestPalindrome = LongestPalindrome()
let result = longestPalindrome.getLongest("abccccdd")
print(result)
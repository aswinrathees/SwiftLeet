class ReverseStringTwo {

    func reverseWithKey(_ s: String, _ k: Int) -> String {
        var result = Array(s)

        for start in stride(from: 0, to: result.count, by: 2*k) {
            var left = start
            var right = min(result.count - 1, start + k - 1)
            while left < right {
                result.swapAt(left, right)

                left += 1
                right -= 1
            }
        }

        return String(result)
    }
}

let reverseStringTwo = ReverseStringTwo()
let result = reverseStringTwo.reverseWithKey("abcdefg", 2)
print(result)
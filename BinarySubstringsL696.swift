class BinarySubstringsL696 {

    func getCount(_ s: String) -> Int {
        let chars = Array(s)
        var ans = 0
        var prevCount = 0    // count of previous group (0s or 1s)
        var currCount = 1    // count of current group

        for i in 0 ..< chars.count - 1 {
            if chars[i] == chars[i + 1] {
                currCount += 1
            } else {
                ans += min(prevCount, currCount)
                prevCount = currCount
                currCount = 1
            }
        }
        ans += min(prevCount, currCount)  // finalize last adjacent pair
        return ans
    }
}

let binarySubstrings = BinarySubstringsL696()
let result = binarySubstrings.getCount("00110011")
print(result)  // Output: 6
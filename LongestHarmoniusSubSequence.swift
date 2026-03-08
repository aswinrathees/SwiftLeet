class LongestHarmoniusSubSequence {

    func getSequenceCount(_ nums: [Int]) -> Int {
        var countMap: [Int: Int] = [:]

        for num in nums {
            countMap[num, default: 0] += 1
        }

        var maxLength = 0

        for (num, freq) in countMap {
            if let nextFreq = countMap[num + 1] {
                maxLength = max(maxLength, freq + nextFreq)
            }
        }

        return maxLength
    }
}

let longestSubSequence = LongestHarmoniusSubSequence()
let nums = [1, 3, 2, 2, 5, 2, 3, 7]
let result = longestSubSequence.getSequenceCount(nums)
print("Length of the longest harmonious subsequence: \(result)")
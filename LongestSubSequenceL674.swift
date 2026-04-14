class LongestSubSequenceL674 {

    func getLength(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        
        var count = 1
        var maxCount = 1
        
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                count += 1
                maxCount = max(maxCount, count)
            } else {
                count = 1
            }
        }
        
        return maxCount
    }
}

let longestSubSequence = LongestSubSequenceL674()
let result = longestSubSequence.getLength([1,3,5,4,7])
print(result)
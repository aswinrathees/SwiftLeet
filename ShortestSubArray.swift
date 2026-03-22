class ShortestSubArray {

    func getArray(_ nums: [Int]) -> Int {
        var frequency: [Int: Int] = [:]
        var firstOccurrence: [Int: Int] = [:]
        var lastOccurrence: [Int: Int] = [:]

        for i in 0..<nums.count {
            let num = nums[i]
            frequency[num, default: 0] += 1
            if firstOccurrence[num] == nil {
                firstOccurrence[num] = i
            }
            lastOccurrence[num] = i
        }

        let degree = frequency.values.max() ?? 0
        var shortestLength = nums.count

        for (num, freq) in frequency {
            if freq == degree {
                let length = lastOccurrence[num]! - firstOccurrence[num]! + 1
                shortestLength = min(shortestLength, length)
            }
        }

        return shortestLength
    }
}

let shortestSubArray = ShortestSubArray()
let nums = [1, 2, 2, 3, 1]
let result = shortestSubArray.getArray(nums)
print(result) // Output: 2
class MonotonicL896 {

    func isMonotonic(_ nums: [Int]) -> Bool {
        if nums.count <= 2 { return true }
        
        var isIncreasing = nums[0] <= nums[1]
        var isDecreasing = nums[0] >= nums[1]
        
        for i in 1..<nums.count - 1 {
            isIncreasing = isIncreasing && (nums[i] <= nums[i + 1])
            isDecreasing = isDecreasing && (nums[i] >= nums[i + 1])
            if !isIncreasing && !isDecreasing { return false }
        }
        return isIncreasing || isDecreasing
    }
}

let monotonic = MonotonicL896()
let result = monotonic.isMonotonic([1, 2, 2, 3])
print(result) // Output: true
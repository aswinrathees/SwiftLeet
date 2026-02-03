class ArrayElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = 0
        var count = 0
        
        // Phase 1: Find a candidate
        for num in nums {
            if count == 0 {
                candidate = num
            }
            count += (num == candidate) ? 1 : -1
        }
        
        // Phase 2: (Optional) Verify candidate
        // Since the problem guarantees a majority element, we can skip verification.
        return candidate
    }
}

let arrayElement = ArrayElement()
let result = arrayElement.majorityElement([1,3,3,1,3])
print(result)
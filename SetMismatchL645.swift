class SetMismatchL645 {

    func getMissedAndRepeated(_ nums: [Int]) -> [Int] {
        var seen = Array(repeating: false, count: nums.count + 1)
        var duplicate = -1
        var missing = -1
        
        // Find duplicate and missing
        for num in nums {
            if num > nums.count || num < 1 { continue }
            if seen[num] {
                duplicate = num  // Found duplicate
            } else {
                seen[num] = true
            }
        }
        
        // Find missing
        for i in 1...nums.count {
            if !seen[i] {
                missing = i
                break
            }
        }
        
        return [duplicate, missing]
    }
}

let setMismatch = SetMismatchL645()
let result = setMismatch.getMissedAndRepeated([1, 2, 2, 4])
print(result)  // Output: [2, 3]
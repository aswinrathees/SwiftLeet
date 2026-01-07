class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if let prevIndex = seen[complement] {
                return [prevIndex, index]
            }
            seen[num] = index
        }
        return []
    }
}

let twoSum = TwoSum()
print(twoSum.twoSum([2, 7, 11, 15], 9))  // Output: [0, 1]

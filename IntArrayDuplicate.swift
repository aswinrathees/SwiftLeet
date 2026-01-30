class IntArrayDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()

        for num in nums {
            if seen.contains(num) {
                return true
            }
            seen.insert(num)
        }

        return false
    }
}

let intArrayDuplicate = IntArrayDuplicate()
let result = intArrayDuplicate.containsDuplicate([1,2,1,3])
print(result)
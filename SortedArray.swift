class SortedArray {
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        var writeIndex = 1
        for readIndex in 1..<nums.count {
            if nums[readIndex] != nums[writeIndex - 1] {
                nums[writeIndex] = nums[readIndex]
                writeIndex += 1
            }
        }
        return writeIndex
    }
}

let sortedArray = SortedArray()
var nums1 = [1, 1, 2]
let length1 = sortedArray.removeDuplicates(&nums1)
print(length1)
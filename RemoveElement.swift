class RemoveElement {

    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard !nums.isEmpty else { return 0 }

        var index = 0
        for j in 0..<nums.count {
            if nums[j] != val {
                nums[index] = nums[j]
                index += 1
            }
        }
        return index
    }
}

let remover = RemoveElement()
var nums = [3, 2, 2, 3]
let val = 3
print(remover.removeElement(&nums, val))  // Output: 2
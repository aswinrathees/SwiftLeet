class MoveZeroes {

    func perform(_ nums: inout [Int]) {
        guard !nums.isEmpty else { return }

        var locIndex = nums.startIndex
        var numIndex = nums.startIndex


        while numIndex != nums.endIndex {
            if nums[numIndex] != 0 {
                nums[locIndex] = nums[numIndex]

                if locIndex != numIndex {
                    nums[numIndex] = 0
                }
                locIndex += 1
            }
            numIndex += 1
        }
    }
}

let moveZeroes = MoveZeroes()
var nums = [0, 1, 0, 3, 12]
moveZeroes.perform(&nums)
print(nums) // Output: [1, 3, 12, 0, 0]
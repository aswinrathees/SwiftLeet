class TargetIndexL704 {

    func getIndex(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let mid = left + (right - left) / 2

            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return -1
    }
}

let targetIndex = TargetIndexL704()
let result = targetIndex.getIndex([-1,0,3,5,9,12], 9)
print(result) // Output: 4

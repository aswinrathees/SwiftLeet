class RangeSumQueryL303 {

    private var prefixSum: [Int]

    init(_ nums: [Int]) {
        prefixSum = Array(repeating: 0, count: nums.count)
        for i in 0..<nums.count {
            prefixSum[i] = nums[i] + (i > 0 ? prefixSum[i - 1] : 0)
        }
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSum[right] - (left > 0 ? prefixSum[left - 1] : 0)
    }
}

let rangeSumQuery = RangeSumQueryL303([-2, 0, 3, -5, 2, -1])
let result = rangeSumQuery.sumRange(0, 2) // return 1 ((-2) + 0 + 3)
print(result)
class MaxAverageSWL643 {

    func getAverage(_ nums: [Int], _ k: Int) -> Double {
        var sum = nums[0..<k].reduce(0, +)
        var maxSum = sum

        for i in k..<nums.count {
            sum += nums[i] - nums[i - k]
            maxSum = max(maxSum, sum)
        }

        return Double(maxSum) / Double(k)
    }
}

let maxAverage = MaxAverageSWL643()
let result = maxAverage.getAverage([1, 12, -5, -6, 50, 3], 4)
print(result) // Output: 12.75
class RunningSumOf1DArray {

 func runningSum(nums: [Int]) -> [Int] {
    guard !nums.isEmpty else {
        return []
    }

    var finalResult = 0
    return nums.map { finalResult += $0; return finalResult }
 }   
}

let runningSumOf1DArray = RunningSumOf1DArray()
let result = runningSumOf1DArray.runningSum(nums: [1, 2, 3, 4])
print(result)
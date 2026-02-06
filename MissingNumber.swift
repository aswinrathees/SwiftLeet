class MissingNumber {

    func getMissingNumber(_ nums: [Int]) -> Int {
        let numsCount = nums.count
        let sortedNums = nums.sorted()
        for index in 0..<numsCount {
            if sortedNums[index] != index { return index }
        }
        return numsCount
    }
}

let missingNumber = MissingNumber()
let result = missingNumber.getMissingNumber([3, 0, 1])
print(result)
class ArrayPairSum {

    func getSumOfPairs(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var sum = 0
        var count = 0
        
        while count < sorted.count - 1 {
            sum += min(sorted[count], sorted[count + 1])
            count += 2
        }
        return sum
    }
}

let arrayPairSum = ArrayPairSum()
let result = arrayPairSum.getSumOfPairs([1, 4, 3, 2])
print(result) // Output: 4
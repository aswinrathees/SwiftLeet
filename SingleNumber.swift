class SingleNumber {
    
    func getSingleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }
}

let solution = SingleNumber()
let singleNumber = solution.getSingleNumber([2,2,1])
print(singleNumber)  // Output: 1
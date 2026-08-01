class SingleNumberL136 {
    
    func getSingleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }
}

let solution = SingleNumberL136()
let singleNumber = solution.getSingleNumber([2,2,1])
print(singleNumber)  // Output: 1
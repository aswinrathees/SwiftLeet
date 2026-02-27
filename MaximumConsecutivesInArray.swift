class MaximumConsecutivesInArray {
    func findMaxOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxCount = 0
        
        for num in nums {
            if num == 1 {
                count += 1
                maxCount = max(maxCount, count)
            } else {
                count = 0
            }
        }
        
        return maxCount
    }
}

let maximumConsecutivesInArray = MaximumConsecutivesInArray()
let result = maximumConsecutivesInArray.findMaxOnes([1,0,1,1,0,1,1,1])
print(result)
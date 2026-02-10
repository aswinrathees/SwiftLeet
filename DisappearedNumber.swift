class DisappearedNumber {

    func getDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let numSet = Set(nums)
        var missingNumbers: [Int] = []

        for i in 1...nums.count {
            if !numSet.contains(i) {
                missingNumbers.append(i)
            }
        }

        return missingNumbers
    }
}

let disappearedNumber = DisappearedNumber()
let nums = [4, 3, 2, 7, 8, 2, 3, 1]
let result = disappearedNumber.getDisappearedNumbers(nums)
print(result)
class ArrayInsertPosition {

    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, value) in nums.enumerated() {
            if value >= target {
                return index
            }
        }

        return nums.count
    }
}

let arrayInsertPosition = ArrayInsertPosition()
let position = arrayInsertPosition.searchInsert([1, 3, 5, 6], 5)
print(position) 
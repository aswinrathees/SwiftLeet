class ThirdMax {

    func getThirdMax(_ nums: [Int]) -> Int {
        let sortedNums = Set(nums).sorted()
        if sortedNums.count < 3 {
            return sortedNums.last ?? 0
        } else {
            return sortedNums[sortedNums.count - 3]
        }
    }
}

let thirdMax = ThirdMax()
let result = thirdMax.getThirdMax([3, 2, 1])
print(result) 
class ArrayByParityL905 {

    func getSortedArray(_ nums: [Int]) -> [Int] {
        var numsFinal: [Int] = []
        var odds: [Int] = []

        for num in nums {
            if num % 2 == 0 {
                numsFinal.append(num)
            } else {
                odds.append(num)
            }
        }

        numsFinal += odds

        return numsFinal
    }
}

let arrayByParityL905 = ArrayByParityL905()
let result = arrayByParityL905.getSortedArray([3, 1, 2, 4])
print(result) // Output: [2, 4, 3, 1]
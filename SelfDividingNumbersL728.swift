class SelfDividingNumbersL728 {

    func getList(_ left: Int, _ right: Int) -> [Int] {
        var selfDividingList: [Int] = []

        for val in left...right {
            var num = val
            var isSelfDividing = true
            
            while num > 0 {
                let digit = num % 10
                if digit == 0 || val % digit != 0 {  // Also check for zero digits
                    isSelfDividing = false
                    break
                }
                num = num / 10
            }
            
            if isSelfDividing {
                selfDividingList.append(val)
            }
        }

        return selfDividingList
    }
}

let selfDividingNumbers = SelfDividingNumbersL728()
let result = selfDividingNumbers.getList(1, 22)
print(result)  // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
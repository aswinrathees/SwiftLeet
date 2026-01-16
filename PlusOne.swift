class PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var newDigits = digits
        var index = newDigits.count - 1
        
        while index >= 0 {
            if newDigits[index] < 9 {
                newDigits[index] += 1
                return newDigits
            }
            newDigits[index] = 0
            index -= 1
        }
        
        // All digits were 9, so prepend 1
        newDigits.insert(1, at: 0)
        return newDigits
    }
}

let plusOne = PlusOne()
let result = plusOne.plusOne([1, 2, 3])
print(result)
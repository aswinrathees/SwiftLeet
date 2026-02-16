class HappyNumber {

    func isHappy(_ n: Int) -> Bool {
        var num = n
        var seen = Set<Int>()

        while num != 1 {
            if seen.contains(num) {
                return false
            }

            seen.insert(num)

            var sum = 0
            var temp = num

            while temp > 0 {
                let digit = temp % 10
                sum += digit * digit
                temp /= 10
            }

            num = sum
        }

        return true
    }
}

let happyNumber = HappyNumber()
let result = happyNumber.isHappy(19)
print(result)
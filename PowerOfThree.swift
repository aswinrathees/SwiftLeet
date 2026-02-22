class PowerOfThree {

    func isPowerOfThree(_ n: Int) -> Bool {
        guard n >= 1 else {
            return false
        }

        var num = n

        while num % 3 == 0 {
            num /= 3
        }

        return num == 1
    }
}

let powerOfThree = PowerOfThree()
let result = powerOfThree.isPowerOfThree(27)
print(result)
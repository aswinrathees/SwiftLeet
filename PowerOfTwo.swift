class PowerOfTwo {

    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }

        var num = n
        while num % 2 == 0 {
            num /= 2
        }

        return num == 1
    }
}

let powerOfTwo = PowerOfTwo()
let result = powerOfTwo.isPowerOfTwo(16)
print(result)
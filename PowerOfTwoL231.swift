class PowerOfTwoL231 {

    func isPowerOfTwo(_ n: Int) -> Bool {
        return n > 0 && (n & (n - 1)) == 0
    }
}

let powerOfTwo = PowerOfTwoL231()
let result = powerOfTwo.isPowerOfTwo(16)
print(result)
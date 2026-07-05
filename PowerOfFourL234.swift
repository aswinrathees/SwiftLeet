class PowerOfFourL234 {

    func isPowerOfFour(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        var num = n
        while num % 4 == 0 {
            num /= 4
        }
        
        return num == 1
    }
}

let powerOfFour = PowerOfFourL234()
let result = powerOfFour.isPowerOfFour(16)
print(result)
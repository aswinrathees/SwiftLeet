// An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.
class UglyNumber {

    func isUgly(_ n: Int) -> Bool {
        if n < 1 {
            return false
        }

        var num = n
        while num % 2 == 0 {
            num /= 2
        }
        while num % 3 == 0 {
            num /= 3
        }
        while num % 5 == 0 {
            num /= 5
        }

        return num == 1
    }
}

let uglyNumber = UglyNumber()
let result = uglyNumber.isUgly(6)
print(result)
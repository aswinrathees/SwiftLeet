class PerfectNumber {

    func isPerfectNumber(_ num: Int) -> Bool {
        if num <= 1 {
            return false
        }

        var sum = 1
        let squareRoot = Int(sqrt(Double(num)))
        if squareRoot >= 2 {
            for i in 2...squareRoot {
                if num % i == 0 {
                    sum += i
                    if i != num/i {
                        sum += num/i
                    }
                }
            }
        }

        return sum == num
    }
}

let perfectNumber = PerfectNumber()
let isPerfectNumber = perfectNumber.isPerfectNumber(28)
print(isPerfectNumber)

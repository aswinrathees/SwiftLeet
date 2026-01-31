class Sum {
    
	func addDigits(_ num: Int) -> Int {
        var n = abs(num) // Handle negative numbers
        while n >= 10 { // Repeat until single digit
            var sum = 0
            while n > 0 {
                sum += n % 10
                n /= 10
            }
            n = sum
        }
        return n
    }
}

let sum = Sum()
let result = sum.addDigits(38)
print(result)
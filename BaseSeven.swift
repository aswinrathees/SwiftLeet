class BaseSeven {

    func convertDecimalToBase7(_ num: Int) -> String {
        return String(num, radix: 7)
    }

    // Alternatively, you can implement the conversion manually:
    /*func convertDecimalToBase7Manual(_ num: Int) -> String {
        if num == 0 {
            return "0"
        }

        // Handle sign
        let isNegative = num < 0
        var n = abs(num)

        var digits = ""   // build digits from least to most significant

        // Repeated division by 7
        while n > 0 {
            let remainder = n % 7
            digits = String(remainder) + digits  // prepend current digit
            n = n / 7
        }

        // Add negative sign if needed
        return isNegative ? "-" + digits : digits
    }
    */
}

let baseSeven = BaseSeven()
let result = baseSeven.convertDecimalToBase7(100)
print(result) // Output: "202"
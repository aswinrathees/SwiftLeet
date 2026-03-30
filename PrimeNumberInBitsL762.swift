class PrimeNumberInBitsL762 {

    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var count = 0
        
        for val in left...right {
            let binary = String(val, radix: 2)
            let number = binary.filter { $0 == "1" }.count
            
            if isPrime(number) {
                count += 1
            }
        }
        
        return count
    }
    
    private func isPrime(_ n: Int) -> Bool {
        if n <= 1 { return false }
        if n <= 3 { return true }
        if n % 2 == 0 || n % 3 == 0 { return false }
        
        var i = 5
        while i * i <= n {
            if n % i == 0 || n % (i + 2) == 0 {
                return false
            }
            i += 6
        }
        return true
    }
}

let primeNumberInBits = PrimeNumberInBitsL762()
let result = primeNumberInBits.countPrimeSetBits(6, 10)
print(result) // Output: 4
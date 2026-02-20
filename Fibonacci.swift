class Fibonacci {

    func getFibonacci(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 { return 1 }

        var prev = 0, curr = 1
        for _ in 2..<n+1 {
            let next = prev + curr
            prev = curr
            curr = next
        }

        return curr
    }
}

let fibonacci = Fibonacci()
let result = fibonacci.getFibonacci(10)
print(result)
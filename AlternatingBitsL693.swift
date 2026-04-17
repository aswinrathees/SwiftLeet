class AlternatingBitsL693 {
    
    func hasAlternatingBits(_ n: Int) -> Bool {
        let binary = String(n, radix: 2)
        if binary.count < 2 {
            return true
        }
        
        let chars = Array(binary)
        for i in 0 ..< chars.count - 1 {
            if chars[i] == chars[i + 1] {
                return false
            }
        }
        return true
    }
}

let alternatingBitsL693 = AlternatingBitsL693()
let result = alternatingBitsL693.hasAlternatingBits(5)
print(result)
class BinarySum {

    func addBinary(_ a: String, _ b: String) -> String {
        var i = a.count - 1
        var j = b.count - 1
        var carry = 0
        var result: [Character] = []
        
        let arrA = Array(a)
        let arrB = Array(b)
        
        while i >= 0 || j >= 0 || carry > 0 {
            let bitA = (i >= 0) ? Int(String(arrA[i]))! : 0
            let bitB = (j >= 0) ? Int(String(arrB[j]))! : 0
            
            let sum = bitA + bitB + carry
            result.append(Character(String(sum % 2)))
            carry = sum / 2
            
            i -= 1
            j -= 1
        }
        
        return String(result.reversed())
    }
}

let binarySum = BinarySum()
let result = binarySum.addBinary("1010", "1101")
print(result)
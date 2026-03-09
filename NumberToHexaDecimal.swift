class NumberToHexaDecimal {

    func toHex(_ num: Int) -> String {
        if num == 0 { return "0" }
    
        let chars = "0123456789abcdef"
        var s: [Character] = []
        
        let uNum = UInt32(bitPattern: Int32(num))
        for i in stride(from: 7, through: 0, by: -1) {
            let x = (uNum >> (4 * UInt32(i))) & 0xF
            if !s.isEmpty || x != 0 {
                s.append(chars[chars.index(chars.startIndex, offsetBy: Int(x))])
            }
        }
        
        return String(s)
    } 
}


let numberToHexaDecimal = NumberToHexaDecimal()
let result = numberToHexaDecimal.toHex(26)
print(result) // Output: "1a"
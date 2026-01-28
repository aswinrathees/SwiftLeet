class ReverseBits {

    func getReversedNumber(_ n: Int) -> Int {
        var result = 0
        var value = n
        
        for _ in 0..<32 {          // iterate over 32 bits
            result <<= 1           // shift result left to make room
            result |= (value & 1)  // copy the least significant bit
            value >>= 1            // shift input right to process next bit
        }    
        return result

    }
}

let reverseBits = ReverseBits()
let result = reverseBits.getReversedNumber(43261596)
print(result)
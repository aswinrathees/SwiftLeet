class OneBitCharacterL717 {
    
    func isOneBit(_ bits: [Int]) -> Bool {
        var i = 0
        let n = bits.count
        while i < n - 1 {
            if bits[i] == 0 {
                i += 1
            } else {
                i += 2
            }
        }
        return i == n - 1
    }
}

let oneBitCharacter = OneBitCharacterL717()
let result = oneBitCharacter.isOneBit([1, 0, 0])
print(result) // Output: true
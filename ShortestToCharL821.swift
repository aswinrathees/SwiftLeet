class ShortestToCharL821 {
    
    func getDistanceList(_ s: String, _ c: Character) -> [Int] {
        let n = s.count
        let sArray = Array(s)
        var result = Array(repeating: n, count: n)
        
        // Forward pass
        var lastSeen = -n
        for i in 0..<n {
            if sArray[i] == c { lastSeen = i }
            result[i] = i - lastSeen
        }
        
        // Backward pass
        lastSeen = 2 * n
        for i in stride(from: n - 1, through: 0, by: -1) {
            if sArray[i] == c { lastSeen = i }
            result[i] = min(result[i], lastSeen - i)
        }
        
        return result
    }
}

let shortestToChar = ShortestToCharL821()
let result = shortestToChar.getDistanceList("loveleetcode", "e")
print(result) // Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
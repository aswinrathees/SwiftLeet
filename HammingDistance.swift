class HammingDistance {
    
    func getDistance(_ x: Int, _ y: Int) -> Int {
        var xor = x ^ y    
        var count = 0
        
        while xor > 0{
            count += xor & 1
            xor >>= 1
        }
        return count
    }
}

let hammingDistance = HammingDistance()
let result = hammingDistance.getDistance(1, 4)
print(result) // Output: 2
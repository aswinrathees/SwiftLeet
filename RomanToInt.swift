class RomanToInt {
    
    func getIntFromRoman(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        
        let romanValues: [Character: Int] = [
            "I": 1, "V": 5, "X": 10, "L": 50,
            "C": 100, "D": 500, "M": 1000
        ]
        
        var result = 0
        var i = 0
        
        while i < s.count {
            let currentChar = s[s.index(s.startIndex, offsetBy: i)]
            let currentValue = romanValues[currentChar] ?? 0
            
            if i + 1 < s.count {
                let nextChar = s[s.index(s.startIndex, offsetBy: i + 1)]
                let nextValue = romanValues[nextChar] ?? 0
                
                if currentValue < nextValue {
                    result += nextValue - currentValue
                    i += 2
                    continue
                }
            }
            
            result += currentValue
            i += 1
        }
        
        return result
    }
}

let romanToInt = RomanToInt()
let intValue = romanToInt.getIntFromRoman("MCMXCIV")
print(intValue)

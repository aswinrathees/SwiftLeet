class StringsDifference2 {

    func findTheDifference(_ s: String, _ t: String) -> Character {
        var count = [Character: Int]()
    
        // Count characters in both strings
        for char in s {
            count[char, default: 0] += 1
        }
        for char in t {
            count[char, default: 0] -= 1
            if count[char]! == -1 {
                return char  // Found the extra character
            }
        }
        
        return " "
    }

}

let stringsDifference2 = StringsDifference2()
let result = stringsDifference2.findTheDifference("abcd", "abcde")
print(result)
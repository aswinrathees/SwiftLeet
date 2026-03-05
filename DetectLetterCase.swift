class DetectLetterCase {

    func isSameCase(_ word: String) -> Bool {
        let chars = Array(word)
        
        // Case 1: All lowercase
        if word == word.lowercased() { return true }
        
        // Case 2: All uppercase  
        if word == word.uppercased() { return true }
        
        // Case 3: First uppercase, rest lowercase
        if chars.count > 1 && 
           chars[0].isUppercase && 
           chars[1...].allSatisfy({ $0.isLowercase }) {
            return true
        }
        
        return false
    }
}

let detectLetterCase = DetectLetterCase()
let isSameCase = detectLetterCase.isSameCase("USA") // true
let isSameCase2 = detectLetterCase.isSameCase("leetcode") // true    
print(isSameCase) // true
print(isSameCase2) // true

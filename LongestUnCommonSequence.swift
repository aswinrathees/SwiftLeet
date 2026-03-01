class LongestUnCommonSequence {
    
	func findLength(_ a: String, _ b: String) -> Int {
        return a == b ? -1 : max(a.count, b.count)
    }
}

let longestUnCommonSequence = LongestUnCommonSequence()
let result = longestUnCommonSequence.findLength("aba", "cdc")
print(result)
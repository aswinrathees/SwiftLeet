class UniqueChar {

    func firstUniqChar(_ s: String) -> Int {
        let arr = Array(s.utf8)
        for i in 0..<arr.count {
            var isAccepted = true
            for j in 0..<arr.count {
                if i != j, arr[i] == arr[j] {
                    isAccepted = false
                    break
                }
            }
            if isAccepted {
                return i
            } 
        }
        return -1
    }
}

let uniqueChar = UniqueChar()
let result = uniqueChar.firstUniqChar("leetcode")
print(result)
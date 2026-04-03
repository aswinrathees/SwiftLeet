class NumberOfLinesToWriteStringL806 {

    func getLinesAndLength(_ widths: [Int], _ s: String) -> [Int] {
        var map = [Int: Int]()
        let aCode = Int(Character("a").asciiValue!)
        
        for i in 0..<widths.count {
            let charCode = aCode + i
            map[charCode] = widths[i]
        }
        
        let sArray = Array(s)
        var length = 0
        var lines = 1
        
        for char in sArray {
            let code = Int(char.asciiValue!)
            if length + map[code, default: 0] > 100 {
                lines += 1
                length = map[code, default: 0]
            } else {
                length += map[code, default: 0]
            }
        }
        
        return [lines, length]
    }
}

let numberOfLines = NumberOfLinesToWriteStringL806()
let result = numberOfLines.getLinesAndLength([10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10], "abcdefghijklmnopqrstuvwxyz")
print(result) // Output: [3, 60]
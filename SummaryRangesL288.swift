class SummaryRangesL288 {

    func getRanges(_ nums: [Int]) -> [String] {
        var resultString: [String] = []
        guard !nums.isEmpty else { return resultString }
        
        var start = nums[0]
        var end = nums[0]
        
        for i in 1..<nums.count {
            if nums[i] == end + 1 {
                end = nums[i]
            } else {
                // Append previous range
                if start == end {
                    resultString.append(String(start))
                } else {
                    resultString.append("\(start)->\(end)")
                }
                // Start new range
                start = nums[i]
                end = nums[i]
            }
        }
        
        // Append the last range
        if start == end {
            resultString.append(String(start))
        } else {
            resultString.append("\(start)->\(end)")
        }
        
        return resultString
    }
}

let summaryRanges = SummaryRangesL288()
let result = summaryRanges.getRanges([0, 1, 2, 4, 5, 7])
print(result) // Output: ["0->2", "4->5", "7"]
class CalculateScoreL682 {

    func getScore(_ operations: [String]) -> Int {
        var totalScore: [Int] = []

        for op in operations {
            switch op {
                case "C":
                    if !totalScore.isEmpty {
                        totalScore.removeLast()
                    }
                case "D":
                    if !totalScore.isEmpty {
                        totalScore.append(2 * totalScore.last!)
                    }
                case "+":
                    if totalScore.count >= 2 {
                        let newRecord = totalScore[totalScore.count - 2]
                                     + totalScore.last!
                        totalScore.append(newRecord)
                    }
                default:
                    if let num = Int(op) {
                        totalScore.append(num)
                    }
            }
        }

        return totalScore.reduce(0, +)
    }
}

let calculateScore = CalculateScoreL682()
let operations = ["5", "2", "C", "D", "+"]
let result = calculateScore.getScore(operations)
print(result) // Output: 30
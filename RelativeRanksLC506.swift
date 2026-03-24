class RelativeRanksLC506 {

    func getRanks(_ score: [Int]) -> [String] {
        let sortedScore = score.sorted(by: >)  // Highest first
        var scoreDict: [Int: String] = [:]
        
        for (index, value) in sortedScore.enumerated() {
            scoreDict[value] = String(index + 1)  // score → rank
        }
        
        var finalRanks: [String] = []
        for value in score {
            let rank = scoreDict[value]!
            switch rank {
            case "1": finalRanks.append("Gold Medal")
            case "2": finalRanks.append("Silver Medal")
            case "3": finalRanks.append("Bronze Medal")
            default: finalRanks.append(rank)
            }
        }
        return finalRanks
    }
}

let relativeRanks = RelativeRanksLC506()
let scores = [10, 3, 8, 9, 4]
let results = relativeRanks.getRanks(scores)
print(results)  // Output: ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"]
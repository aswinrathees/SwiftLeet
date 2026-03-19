class PoisonedDuration {

    func getSeconds(_ timeSeries: [Int], _ duration: Int) -> Int {
        var result = 0
        for i in 1..<timeSeries.count {
            result += min(duration, timeSeries[i] - timeSeries[i - 1])
        }
        result += duration
        return result
    }
}

let poisonedDuration = PoisonedDuration()
let result = poisonedDuration.getSeconds([1, 4], 2)
print(result) // Output: 4
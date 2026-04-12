class BinaryWatchL401 {

    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var result: [String] = []
        for hour in 0..<12 {
            for minute in 0...59 {
                let hBits = bitCount(hour)
                let mBits = bitCount(minute)
                if hBits + mBits == turnedOn {
                    result.append("\(hour):\(String(format: "%02d", minute))")
                }
            }
        }
        return result
    }
    
    private func bitCount(_ n: Int) -> Int {
        var count = 0
        var num = n
        while num > 0 {
            num &= num - 1
            count += 1
        }
        return count
    }
}

let binaryWatch = BinaryWatchL401()
let results = binaryWatch.readBinaryWatch(1)
print(results)
class BinaryGapL868 {

    func getDistance(_ n: Int) -> Int {
         var maxGap = 0
        var prevOneIndex = -1     // position of last seen 1
        var currentIndex = 0      // bit position (from LSB)

        var num = n
        while num > 0 {
            if num & 1 == 1 {
                if prevOneIndex != -1 {
                    maxGap = max(maxGap, currentIndex - prevOneIndex)
                }
                prevOneIndex = currentIndex
            }
            currentIndex += 1
            num >>= 1
        }

        return maxGap
    }
}

let binaryGap = BinaryGapL868()
let result = binaryGap.getDistance(22) // Example input
print(result) // Output: 2
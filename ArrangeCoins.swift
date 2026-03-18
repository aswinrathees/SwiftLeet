class ArrangeCoins {

    func getCompleteRows(_ n: Int) -> Int {
        var left: Int64 = 1
        var right: Int64 = Int64(n)
        var result: Int64 = 0

        while left <= right {
            let mid = left + (right - left) / 2
            let coinsNeeded = mid * (mid + 1) / 2

            if coinsNeeded <= Int64(n) {
                result = mid
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return Int(result)
    }
}

let arrangeCoins = ArrangeCoins()
let result = arrangeCoins.getCompleteRows(5)
print(result) // Output: 2
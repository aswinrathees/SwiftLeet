import Foundation

class GuessNumber {

    func isHigherOrLower(_ n: Int) -> Int {
        var low = 1
        var high = n

        while true {
            let mid = low + (high - low) / 2
            // Predefined
            let res = guess(mid)

            if res == 1 {
                low = mid + 1
            } else if res == -1 {
                high = mid - 1
            } else {
                return mid
            }
        }
    }
}

let guessNumber = GuessNumber()
let result = guessNumber.isHigherOrLower(10)
print(result)
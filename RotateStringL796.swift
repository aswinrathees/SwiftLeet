class RotateStringL796 {

    func isGoal(_ s: String, _ goal: String) -> Bool {
        guard s != goal else { return true }

        var newString = s
        var index = 0

        while index < s.count {
            newString = String(newString.dropFirst()) + String(newString.prefix(1))

            if newString == goal {
                return true
            }
            index += 1
        }

        return newString == goal
    }
}

let rotateString = RotateStringL796()
let result = rotateString.isGoal("abcde", "cdeab")
print(result) // Output: true
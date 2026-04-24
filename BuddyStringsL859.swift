class BuddyStringsL859 {

    func isBuddy(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count, s.count > 1 else { return false }
        if s == goal { return Set(s).count != s.count }
        if s.count == 2 { return String(s.reversed()) == goal }

        let s = Array(s), g = Array(goal)
        var i1: Int = -1
        var swapped = false

        for i in 0..<s.count {
            guard s[i] != g[i] else { continue }
            
            if swapped {
                return false
            }

            if i1 < 0 {
                i1 = i
            } else {
                if g[i] == s[i1] {
                    swapped = true
                } else {
                    return false
                }
            }
        }

        return swapped
    }
}

let buddyStringsL859 = BuddyStringsL859()
let result = buddyStringsL859.isBuddy("ab", "ba")
print(result) // Output: true
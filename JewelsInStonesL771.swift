class JewelsInStonesL771 {

    func getCount(_ jewels: String, _ stones: String) -> Int {
        var totalJewels = 0

        for jewel in jewels {
            if stones.contains(jewel) {
                totalJewels += stones.count { $0 == jewel }
            }
        }
        return totalJewels
    }
}

let jewelsInStones = JewelsInStonesL771()
let result = jewelsInStones.getCount("aA", "aAAbbbb")
print(result)  // Output: 3

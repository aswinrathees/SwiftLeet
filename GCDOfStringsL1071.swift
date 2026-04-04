class GCDOfStringsL1071 {

    func getGCD(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }

        let gcdLength = gcd(str1.count, str2.count)
        return String(str1.prefix(gcdLength))
    }

    private func gcd(_ a: Int, _ b: Int) -> Int {
        b == 0 ? a : gcd(b, a % b)
    }
}

let gcdOfStrings = GCDOfStringsL1071()
let result = gcdOfStrings.getGCD("ABCABC", "ABC")
print(result) // Output: "ABC"
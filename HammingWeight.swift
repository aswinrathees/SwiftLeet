class HammingWeight {

    func getSetCount(_ n: Int) -> Int {
        let binaryString = String(n, radix: 2)
        return binaryString.filter { $0 == "1"}.count
    }
}

let hammingWeight = HammingWeight()
let result = hammingWeight.getSetCount(11)
print(result)
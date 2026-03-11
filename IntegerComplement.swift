class IntegerComplement {

    func getIntegerComplement(_ num: Int) -> Int {
        let nBinaryString = String(num, radix: 2)

        var nComplementString = ""

        for char in nBinaryString {
            if char == "0" {
                nComplementString.append("1")
            } else {
                nComplementString.append("0")
            }
        }

        var complement = 0
        if let decimal = Int(nComplementString, radix: 2) {
            complement = decimal
        }

        return complement
    }
}

let integerComplement = IntegerComplement()
let result = integerComplement.getIntegerComplement(5)
print(result) // Output: 2
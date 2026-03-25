class LowerCased {

    func getLowerCases(_ s: String) -> String {
        return s.lowercased()

        /** Alternative approach:
        var res = ""
        for i in s.unicodeScalars {
            let ch = Character(i)
            if ch.isUppercase {
                // Use built-in per-char lowercase (avoids full string lowercased)
                if let lower = ch.lowercased().first {
                    res.append(lower)
                } else {
                    res.append(ch)
                }
            } else {
                res.append(ch)
            }
        }
        return res
        **/
    }
}

let lowerCased = LowerCased()
let result = lowerCased.getLowerCases("Hello World!")
print(result) // Output: "hello world!"
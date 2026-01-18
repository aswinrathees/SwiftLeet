class Prefix {

    func longestCommonPrefix(_ strs: [String]) -> String {
        guard !strs.isEmpty else { return "" }

        var prefix = strs[0]

        for str in strs.dropFirst() {
            while !str.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())

                if prefix.isEmpty {
                    return ""
                }
            }
        }

        return prefix
    }
}

let prefix = Prefix()
let result = prefix.longestCommonPrefix(["flower", "flow", "flight"])
print(result)
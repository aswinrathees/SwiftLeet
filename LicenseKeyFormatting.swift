import Foundation

class LicenseKeyFormatting {

    func getFormattedKey(_ s: String, _ k: Int) -> String {
        let cleanString = s.replacingOccurrences(of: "-", with: "")
        var formattedKey = ""
        var count = 0
        
        for char in cleanString.reversed() {
            if count == k {
                formattedKey.append("-")
                count = 0
            }
            formattedKey.append(char.uppercased())
            count += 1
        }
        
        return String(formattedKey.reversed())
    }
}

let licenseKeyFormatter = LicenseKeyFormatting()
let result = licenseKeyFormatter.getFormattedKey("2-5g-3-J", 2)
print(result) // Output: "2-5G-3J"
class MorseRepresentationL804 {

    func getUniqueTransformations(_ words: [String]) -> Int {
        let alphabetDict: [String: String] = ["a":".-",
        "b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---","k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-","u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."]
        var transformations: [String] = []

        for word in words {
            let charArray = Array(word.lowercased())
            var transformation = ""
            for char in charArray {
                guard let morse = alphabetDict[String(char)] else { continue }
                transformation.append(morse)
            }

            transformations.append(transformation)            
        }

        let uniqueTransformations = Set(transformations)
        return uniqueTransformations.count
    }
}

let morseRepresentation = MorseRepresentationL804()
let words = ["gin", "zen", "gig", "msg"]
let result = morseRepresentation.getUniqueTransformations(words)
print(result) // Output: 2
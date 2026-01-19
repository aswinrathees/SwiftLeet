class Parantheses {

    func isValid(_ s : String) -> Bool {
        var stack: [Character] = []
        let validParantheses: [Character: Character] = [")": "(", "}": "{", "]": "["]

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else if let expected = validParantheses[char] {
                if stack.isEmpty || stack.removeLast() != expected {
                    return false
                }
            }
        }

        return stack.isEmpty
    }
}

let parantheses = Parantheses()
let result = parantheses.isValid("()[]{}")
print(result)
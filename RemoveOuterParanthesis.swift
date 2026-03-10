class RemoveOuterParanthesis {

    func getInnerString(_ s: String) -> String {
        var result = ""
        var count = 0
        
        for char in s {
            if char == "(" {
                if count > 0 {
                    result.append(char)
                }
                count += 1
            } else if char == ")" {
                count -= 1
                if count > 0 {
                    result.append(char)
                }
            }
        }
        
        return result
    }
}

let removeOuterParanthesis = RemoveOuterParanthesis()
let result = removeOuterParanthesis.getInnerString("(()())(())")
print(result) // Output: "()()()"
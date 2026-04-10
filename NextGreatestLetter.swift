class NextGreatestLetter {

    func getLetter(_ letters: [Character], _ target: Character) -> Character {
        for c in letters {
            if target < c {
                return c
            }
        }
        return letters[0]
    }
}

let nextGreatestLetter = NextGreatestLetter()
let result = nextGreatestLetter.getLetter(["c", "f", "j"], "a")
print(result) // Output: "c"
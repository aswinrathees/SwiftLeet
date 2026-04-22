class DivisorGameL1025 {

    func isPlayer1Winner(_ n: Int) -> Bool {
        n % 2 == 0
    }
}

let divisorGame = DivisorGameL1025()
let result = divisorGame.isPlayer1Winner(2)
print(result) // Output: true

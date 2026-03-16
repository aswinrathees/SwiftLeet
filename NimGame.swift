class NimGame {

    func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}

let nimGame = NimGame()
let result = nimGame.canWinNim(4)
print(result) // Output: false
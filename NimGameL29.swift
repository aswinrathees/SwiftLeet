class NimGameL29 {

    func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}

let nimGame = NimGameL29()
let result = nimGame.canWinNim(4)
print(result) // Output: false
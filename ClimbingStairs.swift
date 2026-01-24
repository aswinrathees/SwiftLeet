class ClimbingStairs {

    func getSteps(_ n: Int) -> Int {
        if n == 1 { return 1 }
        if n == 2 { return 2 }

        var prev = 1
        var curr = 2

        for _ in 2..<n {
            let temp = curr
            curr += prev
            prev = temp
        } 

        return curr
    }
}

let climbingStairs = ClimbingStairs()
let steps = climbingStairs.getSteps(5)
print(steps)
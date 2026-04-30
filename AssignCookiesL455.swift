class AssignCookiesL455 {

    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let sortedG = g.sorted()
        let sortedS = s.sorted()
        var child = 0
        for cookie in sortedS {
            if child < sortedG.count && sortedG[child] <= cookie {
                child += 1
            }
        }
        return child
    }
}

let assignCookies = AssignCookiesL455()
let result = assignCookies.findContentChildren([1, 2, 3], [1, 1])
print(result) // Output: 1
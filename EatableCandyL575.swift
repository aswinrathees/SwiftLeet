class EatableCandyL575 {

    func getCandyCount(_ candyType: [Int]) -> Int {
        return min(candyType.count/2, Set(candyType).count)
    }
}

let eatableCandyL575 = EatableCandyL575()
let result = eatableCandyL575.getCandyCount([1,1,2,2,3,3])
print(result) // Output: 3
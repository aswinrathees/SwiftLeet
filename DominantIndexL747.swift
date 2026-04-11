class DominantIndexL747 {

    func getIndex(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return 0 }
        
        let sorted = nums.sorted()
        let maxVal = sorted.last!
        let secondMax = sorted.reversed().first(where: { $0 != maxVal }) ?? 0
        
        let maxIndex = nums.firstIndex(of: maxVal)!
        return maxVal >= 2 * secondMax ? maxIndex : -1
    }
}

let dominantIndex = DominantIndexL747()
let result = dominantIndex.getIndex([3, 6, 1, 0])
print(result) // Output: 1

class MaxProductInArray {

    func getValue(_ nums: [Int]) -> Int {
        guard nums.count >= 3 else { return 0 }
        
        // Sort to easily get 2 smallest & 1 largest
        let sorted = nums.sorted()
        let option1 = sorted[0] * sorted[1] * sorted.last!
        let option2 = sorted[sorted.count-3] * sorted[sorted.count-2] * sorted.last!
        
        return max(option1, option2)
    }
}

let maxProduct = MaxProductInArray()
let result = maxProduct.getValue([1, 10, 2, 6, 5, 3])
print(result) // Output: 300 (10 * 6 * 5)
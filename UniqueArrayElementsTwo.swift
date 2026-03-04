class UniqueArrayElementsTwo {

    func getIntersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var count1 = [Int: Int]()
        var result = [Int]()
        
        // Count frequencies in nums1
        for num in nums1 {
            count1[num, default: 0] += 1
        }
        
        // Check nums2, add only up to min frequency
        for num in nums2 {
            if let count = count1[num], count > 0 {
                result.append(num)
                count1[num]! -= 1
            }
        }
        
        return result
    }
}

let uniqueArrayElementsTwo = UniqueArrayElementsTwo()
let nums1 = [1, 2, 2, 1]
let nums2 = [2, 2]
let intersection = uniqueArrayElementsTwo.getIntersection(nums1, nums2)
print(intersection) // Output: [2, 2]
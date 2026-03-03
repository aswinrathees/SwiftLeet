class UniqueArrayElements {

    func getIntersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        let intersection = set1.intersection(set2)
        
        return Array(intersection)
    }
}

let uniqueArrayElements = UniqueArrayElements()
let nums1 = [1, 2, 2, 1]
let nums2 = [2, 2]
let result = uniqueArrayElements.getIntersection(nums1, nums2)
print(result)
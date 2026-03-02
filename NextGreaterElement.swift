class NextGreaterElement {
    func getArray(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var finalArray = Array(repeating: -1, count: nums1.count)

        for i in 0..<nums1.count {
            let value = nums1[i]
            if let pos = nums2.firstIndex(of: value) {
                for j in pos+1..<nums2.count {
                    if nums2[j] > value {
                        finalArray[i] = nums2[j]
                        break
                    }
                }
            }
        }

        return finalArray
    }
}

let nextGreaterElement = NextGreaterElement()
let result = nextGreaterElement.getArray([4,1,2],[1,3,4,2])
print(result)

class MergeSortedArray {

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        
        while j >= 0 {
            if i >= 0 && nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            } else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
    }
}

let mergeSortedArray = MergeSortedArray()
var nums1 = [1,2,3,0,0,0]
let nums2 = [2,5,6]
mergeSortedArray.merge(&nums1, 3, nums2, 3)
print(nums1)
class IntArrayDuplicateTwo {
	
	func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
		var lastSeen = [Int: Int]() // number -> last index
		
		for (i, num) in nums.enumerated() {
			if let prevIndex = lastSeen[num], i - prevIndex <= k {
				return true
			}
			lastSeen[num] = i
		}
		return false
	}
}

let intArrayDuplicateTwo = IntArrayDuplicateTwo()
let result = intArrayDuplicateTwo.containsNearbyDuplicate([1, 0, 1, 1], 1)
print(result)
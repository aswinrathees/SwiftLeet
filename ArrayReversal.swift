class ArrayReversal {

	func reverse(_ s: inout [Character]) {
		var left = 0
		var right = s.count - 1
		
		while left < right {
			s.swapAt(left, right)
			left += 1
			right -= 1
		}

    	print("Reverse: \(s)")
	}
}

let arrayReversal = ArrayReversal()
var inputString: [Character] = ["h", "e", "l", "l", "o"]
arrayReversal.reverse(&inputString)
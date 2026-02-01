class PascalsTriangle {

	func generatePascalsTriangle(_ numRows: Int) -> [[Int]] {
		guard numRows > 0 else { return [] } // No rows if input is zero or negative
		
		var triangle: [[Int]] = [[1]] // First row is always [1]
		
		for row in 1..<numRows {
			var newRow: [Int] = [1] // First element is always 1
			
			let prevRow = triangle[row - 1]
			for col in 1..<row {
				// Each element is sum of two elements above it
				let value = prevRow[col - 1] + prevRow[col]
				newRow.append(value)
			}
			
			newRow.append(1) // Last element is always 1
			triangle.append(newRow)
		}
		
		return triangle
	}
}

let pascalsTriangle = PascalsTriangle()
let result = pascalsTriangle.generatePascalsTriangle(5)
print(result)
class PascalsTriangleTwo {
	
	func getRow(_ rowIndex: Int) -> [Int] {
		if rowIndex == 0 {
			return [1]
		}
		
		var triangle: [[Int]] = [[1]]
		
		for row in 1...rowIndex {
			let prevRow = triangle[row-1]
			var newRow: [Int] = [1]
			
			for col in 1..<prevRow.count {
				newRow.append(prevRow[col-1] + prevRow[col])
			}
			
			newRow.append(1)
			triangle.append(newRow)
		}
		
		return triangle[rowIndex]
	}
}

let pascalsTriangleTwo = PascalsTriangleTwo()
let result = pascalsTriangleTwo.getRow(3)
print(result)
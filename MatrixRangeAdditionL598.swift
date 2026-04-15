class MatrixRangeAdditionL598 {
	
	func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        // If there are no operations, the entire matrix is the max (0)
        if ops.isEmpty {
            return m * n
        }
        
        // We need to find the smallest width and smallest height
        // that all operations have in common.
        var minRow = m
        var minCol = n
        
        for op in ops {
            minRow = min(minRow, op[0])
            minCol = min(minCol, op[1])
        }
        
        // The area of the resulting smallest rectangle contains the max integers
        return minRow * minCol
    }
}

let matrixRangeAdditionL598 = MatrixRangeAdditionL598()
let result = matrixRangeAdditionL598.maxCount(3,3,[[2,2], [3,3]])
print(result)
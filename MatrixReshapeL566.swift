class MatrixReshapeL566 {
    
    func getNewMatrix(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let flatArray = mat.flatMap { $0 }
        let totalElements = r * c
        
        // Check if reshape is possible
        guard flatArray.count == totalElements else { return mat }
        
        var finalMatrix = Array(repeating: [Int](repeating: 0, count: c), count: r)
        
        var index = 0
        for row in 0..<r {
            for col in 0..<c {
                finalMatrix[row][col] = flatArray[index]
                index += 1
            }
        }
        
        return finalMatrix
    }
}

let matrixReshape = MatrixReshapeL566()
let mat = [[1, 2], [3, 4]]
let r = 1
let c = 4
let result = matrixReshape.getNewMatrix(mat, r, c)
print(result) // Output: [[1, 2, 3, 4]]
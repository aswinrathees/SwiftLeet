class MatrixTransposeL867 {

    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let rows = matrix.count
        let cols = matrix[0].count
    
        var result = Array(repeating: Array(repeating: 0, count: rows), count: cols)
        
        for i in 0..<rows {
            for j in 0..<cols {
                result[j][i] = matrix[i][j]
            }
        }
        return result
    }
}

let matrixTranspose = MatrixTransposeL867()
let result = matrixTranspose.transpose([[1,2,3],[4,5,6],[7,8,9]])
print(result)
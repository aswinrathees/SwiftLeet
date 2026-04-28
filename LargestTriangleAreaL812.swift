import Foundation

class LargestTriangleAreaL812 {

    func getArea(_ points: [[Int]]) -> Double {
        var areaArray: [Double] = []
        
        for i in 0..<points.count {
            for j in (i+1)..<points.count {
                for k in (j+1)..<points.count {
                    let p1 = CGPoint(x: CGFloat(points[i][0]), y: CGFloat(points[i][1]))
                    let p2 = CGPoint(x: CGFloat(points[j][0]), y: CGFloat(points[j][1]))
                    let p3 = CGPoint(x: CGFloat(points[k][0]), y: CGFloat(points[k][1]))
                    areaArray.append(triangleArea(p1, p2, p3))
                }
            }
        }
        return areaArray.max() ?? 0.0
    }
    
    func triangleArea(_ p1: CGPoint, _ p2: CGPoint, _ p3: CGPoint) -> Double {
        abs(p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y)) / 2.0
    }
}

let largestTriangleArea = LargestTriangleAreaL812()
let result = largestTriangleArea.getArea([[0,0],[0,1],[1,0],[0,2],[2,0]])
print(result) // Output: 2.0
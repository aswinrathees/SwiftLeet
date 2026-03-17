import Foundation

class ConstructRectangle {

    func getLengthAndWidth(_ area: Int) -> [Int] {
        var width = Int(sqrt(Double(area)))
        while area % width != 0 {
            width -= 1
        }

        return [area / width, width]
    }
}

let constructRectangle = ConstructRectangle()
let result = constructRectangle.getLengthAndWidth(4)
print(result) // Output: [2, 2]
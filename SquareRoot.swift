class SquareRoot {

    func getSquareRootOf(number: Int) -> Int {
        if number < 2 {
            return number
        }

        var left = 1
        var right = number / 2 + 1

        while left <= right {
            let mid = left + (right - left) / 2
            let square = mid * mid

            if square == number {
                return mid
            } else if square < number {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } 

        return right
    }
}

let squareRoot = SquareRoot()
let result = squareRoot.getSquareRootOf(number: 16)
print(result)
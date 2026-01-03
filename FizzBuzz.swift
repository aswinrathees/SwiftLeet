class FizzBuzz {

    func fizzBuzz(_ n: Int) -> [String] {
        var outputArray: [String] = []
        for index in 1...n {
            if index % 3 == 0 && index % 5 == 0 {
                outputArray.append("FizzBuzz")
            } else if index % 3 == 0 {
                outputArray.append("Fizz")
            } else if index % 5 == 0 {
                outputArray.append("Buzz")
            } else {
                outputArray.append("\(index)")
            }
        }
        return outputArray
    }
}

let fizzBuzzInstance = FizzBuzz()
print(fizzBuzzInstance.fizzBuzz(15))
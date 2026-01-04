class NumberOfSteps {

    func numberOfSteps(_ num: Int) -> Int {
        var steps = 0
        var number = num

        while number > 0 {
            if number % 2 == 0 {
                number /= 2
                steps += 1
            } else {
                number -= 1
                steps += 1
            }
        }

        return steps
    }
}


let numberOfSteps = NumberOfSteps()
print(numberOfSteps.numberOfSteps(14))
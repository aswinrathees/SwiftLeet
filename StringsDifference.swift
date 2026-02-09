class StringsDifference {

    func getTheDifference(_ str1: String, _ str2: String) -> String {
        let set1 = Set(str1)
        let set2 = Set(str2)
        
        let difference1 = set1.subtracting(set2)
        let difference2 = set2.subtracting(set1)
        
        let result = difference1.union(difference2).sorted()
        
        return String(result)
    }
}

let difference = StringsDifference()
let result = difference.getTheDifference("hello", "world")
print(result)
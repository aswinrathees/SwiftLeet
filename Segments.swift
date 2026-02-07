class Segments {

    func getCount(_ s: String) -> Int {
        return s.trimmingCharacters(in: .whitespaces).split(separator: " ").count
    }
}

let segments = Segments()
let result = segments.getCount("Hello, my name is John")
print(result)
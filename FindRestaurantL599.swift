class FindRestaurantL599 {

    func getCommonDishes(_ list1: [String], _ list2: [String]) -> [String] {
        var stringDict: [String: Int] = [:]
        
        // Find common restaurants and sum indices
        for (index1, restaurant) in list1.enumerated() {
            if let index2 = list2.firstIndex(of: restaurant) {
                stringDict[restaurant] = index1 + index2
            }
        }
        
        let minSum = stringDict.values.min()!
        return stringDict.filter { $0.value == minSum }.map { $0.key }
    }
}

let findRestaurant = FindRestaurantL599()
let result = findRestaurant.getCommonDishes(["Shogun", "Tapioca Express", "Burger King", "KFC"], ["Piatti", "The Grill at Torrey Pines", "Hungry Hunter Steakhouse", "Shogun"])
print(result) // Output: ["Shogun"]
class RichestCustomerWealth {

    func maximumWealth(_ accounts: [[Int]]) -> Int {
        guard !accounts.isEmpty else { return 0 }

        return accounts.map { $0.reduce(0, +) }.max() ?? 0
    }
}

let richestCustomer = RichestCustomerWealth()
let wealth = richestCustomer.maximumWealth([[1, 2, 3], [3, 2, 1]])
print(wealth)
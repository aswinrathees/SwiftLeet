public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func createList(_ nums: [Int]) -> ListNode? {
    guard !nums.isEmpty else { return nil }
    let head = ListNode(nums[0])
    var current = head
    for num in nums.dropFirst() {
        current.next = ListNode(num)
        current = current.next!
    }
    return head
}


class MiddleOfLinkedList {

    func middleNode(_ head: ListNode?) -> ListNode? {
        var middle = head
        var end = head

        while end != nil && end?.next != nil {
            middle = middle?.next
            end = end?.next?.next
        }

        return middle
    }
}

let middleOfLinkedList = MiddleOfLinkedList()
let head = createList([1,2,3,4,5])
let middle = middleOfLinkedList.middleNode(head!)
print(middle?.val ?? "No middle node")

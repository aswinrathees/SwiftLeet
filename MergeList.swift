class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class MergeList {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let merged = ListNode(0)
        var tail: ListNode? = merged
        var l1 = list1, l2 = list2

        while let node1 = l1, let node2 = l2 {
            if node1.val < node2.val {
                tail?.next = node1
                l1 = node1.next
            } else {
                tail?.next = node2
                l2 = node2.next
            }

            tail = tail?.next
        }

        tail?.next = l1 ?? l2
        return merged.next
    }
}

let mergeList = MergeList()
let list1 = ListNode(1)
list1.val = 2
list1.next = ListNode(4)

let list2 = ListNode(5)
let mergedList = mergeList.mergeTwoLists(list1, list2)
print(mergedList?.val ?? "nil")
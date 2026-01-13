import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
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

class SortedList {
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head
        while let curr = current {
            while let next = curr.next, curr.val == next.val {
                // Skip the duplicate node
                curr.next = next.next
            }
            current = curr.next
        }
        
        return head
    }
}

let list = createList([1,1,2,3,3])
let sortedList = SortedList()
let result = sortedList.deleteDuplicates(list)
var node = result
while let n = node {
    print(n.val, terminator: " ")
    node = n.next
}

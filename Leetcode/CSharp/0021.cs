
public class ListNode {
    public int val;
    public ListNode next;
    public ListNode(int val=0, ListNode next=null) {
        this.val = val;
        this.next = next;
    }
}

public class Solution {
    public ListNode MergeTwoLists(ListNode list1, ListNode list2) {
        ListNode result = new(), resultHead = result;

        while (list1 != null && list2 != null) {
            if (list1.val <= list2.val) {
                result.next = list1;
                list1 = list1.next;
            } else {
                result.next = list2;
                list2 = list2.next;
            }
            result = result.next;
        }

        if (list1 != null) {
            result.next = list1;
        } else {
            result.next = list2;
        }

        return resultHead.next
    }
}

Solution s = new();
s.MergeTwoLists(ListNode(1, ListNode(3, ListNode(5, ListNode()))), ListNode(2, ListNode(4, ListNode(6, null))));
class Solution {
    public boolean isPalindrome(String s) {
        if (s.isEmpty()) { return true; }

        int head = 0, tail = s.length() - 1;
        char cHead, cTail;

        while (head <= tail) {
            cHead = s.charAt(head);
            cTail = s.charAt(tail);

            if (!Character.isLetterOrDigit(cHead)) {
                head += 1;
            } else if (!Character.isLetterOrDigit(cTail)) {
                tail -= 1;
            } else {
                if (Character.toLowerCase(cHead) != Character.toLowerCase(cTail)) {
                    return false;
                }
                head += 1;
                tail -= 1;
            }
        }

        return true;
    }
}
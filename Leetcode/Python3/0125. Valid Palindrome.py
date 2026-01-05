
class Solution:
    def isPalindrome(self, s: str) -> bool:
        if not s :
            return True

        head, tail = 0, len(s) - 1

        while head < tail :
            if not s[head].isalnum():
                head += 1
            elif not s[tail].isalnum():
                tail -= 1
            elif s[head].lower() != s[tail].lower():
                return False
            else:
                head += 1
                tail -= 1

        return True





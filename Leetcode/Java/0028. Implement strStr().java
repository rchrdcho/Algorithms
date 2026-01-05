public class Solution {
    public int strStr(String haystack, String needle) {
        if (needle.length() == 0) {
            return 0;
        }
        int needleLen = needle.length();
        int loopMax = haystack.length() - needleLen + 1;

        for (int i = 0; i < loopMax; i++) {
            if (haystack.substring(i, i + needleLen).equals(needle)) {
                return i;
            }
        }
        return -1;
    }
}

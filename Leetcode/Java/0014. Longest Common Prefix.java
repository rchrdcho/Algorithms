public class Solution {
    public String longestCommonPrefix(String[] strs) {
        if (strs.length == 0) { return ""; }
        if (strs.length == 1) { return strs[0]; }

        String shortest = "", prefix = "";
        int shortestLength = Integer.MAX_VALUE;

        for (String str: strs) {
            int len = str.length();
            if (len < shortestLength) {
                shortestLength = str.length();
                shortest = str;
            }
        }

        for (int i = 0; i <= shortestLength; i++) {
            prefix = shortest.substring(0, i);
            for (int j = 0; j < strs.length; j++) {
                if (!strs[j].startsWith(prefix)) {
                    return prefix.substring(0, prefix.length() - 1);
                }
            }
        }

        return prefix;
    }
}
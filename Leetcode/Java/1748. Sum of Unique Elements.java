public class Solution {
    public int sumOfUnique(int[] nums) {
        int total = 0;
        for (int i = 0; i < nums.length; i++) {
            boolean isUnique = true;
            for (int j = nums.length - 1; j >= 0; j--) {
                if (i != j) {
                    if (nums[i] == nums[j]) {
                        isUnique = false;
                        break;
                    }
                }
            }
            if (isUnique) {
                total += nums[i];
            }
        }
        return total;
    }
}

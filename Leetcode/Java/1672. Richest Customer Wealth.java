class Solution {
    public int maximumWealth(int[][] accounts) {
        int richest = 0;

        for (int[] customer: accounts) {
            int totalWealth = 0;
            for (int balance: customer) {
                totalWealth += balance;
            }
            if (totalWealth > richest) {
                richest = totalWealth;
            }
        }

        return richest;
    }
}
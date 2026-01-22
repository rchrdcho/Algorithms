import java.util.*;

class Solution {
    public int solution(String[] friends, String[] gifts) {
        int n = friends.length;
        int[][] table = new int[n][n];
        Map<String, Integer> index = new HashMap<>();
        
        for (int i = 0; i < n; i++)
            index.put(friends[i], i);
        
        for (String gift : gifts) {
            String[] g = gift.split(" ");
            table[index.get(g[0])][index.get(g[1])]++;
        }
        
        int[] give = new int[n];
        int[] receive = new int[n];
        for (int from = 0; from < n; from++) {
            for (int to = 0; to < n; to++) {
                give[from] += table[from][to];
                receive[to] += table[from][to];
            }
        }
        
        int[] giftIndex = new int[n];
        for (int i = 0; i < n; i++) giftIndex[i] = give[i] - receive[i];
        
        int[] willReceive = new int[n];
        for (int i = 1; i < n; i++) {
            for (int j = 0; j < i; j++) {
                if (table[i][j] > table[j][i]) {
                    willReceive[i]++;
                } else if (table[i][j] < table[j][i]) {
                    willReceive[j]++;
                } else {
                    if (giftIndex[i] > giftIndex[j])
                        willReceive[i]++;
                    else if (giftIndex[i] < giftIndex[j])
                        willReceive[j]++;
                }
            }
        }
        
        int ans = 0;
        for (int x : willReceive) {
            ans = Math.max(ans, x);
        }
        return ans;
    }
}
import java.util.ArrayList;
import static java.lang.Integer.max;
import static java.lang.Integer.min;

class Solution {
    public int[][] intervalIntersection(int[][] firstList, int[][] secondList) {
        ArrayList<int[]> result = new ArrayList<>();
        int i = 0, j= 0;

        while(i < firstList.length && j < secondList.length) {
            if (firstList[i][0] <= secondList[j][1] && firstList[i][1] >= secondList[j][0]) {
                result.add(new int[] {max(firstList[i][0], secondList[j][0]), min(firstList[i][1], secondList[j][1])});
            }
            if (firstList[i][1] < secondList[j][1]) i++;
            else j++;
        }

        return result.toArray(new int[result.size()][2]);
    }
}
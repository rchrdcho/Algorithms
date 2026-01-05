import java.util.*;

class Solution {
    public int solution(int []A, int []B) {
        int size = A.length;

        if (size == 1) {
            return A[0] * B[0];
        }

        int[] aa = Arrays.stream(A).sorted().toArray();
        int[] bb = Arrays.stream(B).sorted().toArray();

        int[][] answers = new int[size][size];

        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                answers[i][j] = aa[i] * bb[j];
            }
        }

        int sum = 0;
        for (int k = 0; k < size; k++) {
            sum += answers[k][(size - 1) - k];
        }

        return sum;
    }
}

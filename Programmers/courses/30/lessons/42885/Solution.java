import java.util.*;

class Solution {
    public int solution(int[] people, int limit) {
        int answer = 0, i = 0;
        int j = people.length - 1;
        Arrays.sort(people);
        
        while (i <= j) {
            if (people[i] + people[j] <= limit) {
                i++;  
            }
            answer++;
            j--;
        }
        
        return answer;
    }
}


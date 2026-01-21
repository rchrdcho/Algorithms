import java.util.*;

class Solution {
    public long solution(int w, int h) {
        int gcd = getGCD(w, h);
        int gcdw = w / gcd;
        int gcdh = h / gcd;
        
        return ( (long) gcdw * h - (gcdw + gcdh - 1)) * gcd;
    }
    
    public int getGCD(int a, int b) {
        int x = a;
        int y = b;
        
        while (y != 0) {
            int temp = x;
            x = y;
            y = temp % y;
        }
        return x;
    }
}


import kotlin.math.pow

class Solution {
    fun plusOne(digits: IntArray): IntArray {
        val count = digits.count()
        for (i in count - 1 downTo 0) {
            if (digits[i] < 9) {
                digits[i] += 1
                return digits
            } else {
                digits[i] = 0
            }
        }

        val arr = IntArray(count+1)
        arr[0] = 1

        return arr
    }
}
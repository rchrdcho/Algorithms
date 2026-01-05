class Solution:
def sortedSquares(self, A: List[int]) -> List[int]:
    squares = []
    result = []
    for i in A:
        squares.append(abs(i))
    for j in sorted(squares):
        result.append(j * j)
    
    return result

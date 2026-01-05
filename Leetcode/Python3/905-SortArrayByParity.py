class Solution:
def sortArrayByParity(self, A: List[int]) -> List[int]:
    l = []
    for i in A:
        if i % 2 == 0:
            l.append(i)
    for j in A:
        if j % 2 == 1:
            l.append(j)
    return l

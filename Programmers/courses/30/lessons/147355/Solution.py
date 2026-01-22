def solution(t, p):
    count = 0
    int_p = int(p)

    for startIndex in range(0, len(t) - len(p) + 1):
        if int(t[startIndex:startIndex + len(p)]) <= int_p:
            count += 1

    return count

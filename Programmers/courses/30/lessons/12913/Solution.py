def solution(land):
    answer = 0

    dp = [[0 for _ in range (4)] for _ in range(len(land) + 1)]

    for i in range(1, len(land) + 1):
        for j in range(4):
            for k in range(4):
                if k == j:
                    continue
                dp[i][j] = max(dp[i][j], land[i - 1][j] + dp[i - 1][k])
                if dp[i][j] > answer:
                    answer = dp[i][j]

    return answer
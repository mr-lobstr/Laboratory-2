countMatch = 0
nextRound = int(input())

while nextRound > 1:
    if nextRound % 2:
        nextRound = (nextRound - 1) // 2 + 1
        countMatch += (nextRound - 1)
    else:
        nextRound //= 2
        countMatch += nextRound

print(countMatch)

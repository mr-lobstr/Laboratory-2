var countMatch = 0
print("Enter a number:")
if let input = readLine(), let nextRound = Int(input) {
    var nextRound = nextRound

    while nextRound > 1 {
        if nextRound % 2 == 1 {
            nextRound = (nextRound - 1) / 2 + 1
            countMatch += (nextRound - 1)
        } else {
            nextRound /= 2
            countMatch += nextRound
        }
    }

    print(countMatch)
} else {
    print("Invalid input. Please enter a valid number.")
}

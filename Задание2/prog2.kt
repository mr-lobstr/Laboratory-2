fun main() {
    var countMatch = 0
    print("Enter a number: ")
    var nextRound = readLine()!!.toInt()

    while (nextRound > 1) {
        if (nextRound % 2 == 1) {
            nextRound = (nextRound - 1) / 2 + 1
            countMatch += nextRound - 1
        } else {
            nextRound /= 2
            countMatch += nextRound
        }
    }

    println(countMatch)
}

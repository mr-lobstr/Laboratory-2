fun numReverse(num: Int): Int {
    var length = 0
    var numCopy = num
    var digit = 10

    while (numCopy != 0) {
        if (numCopy % 10 >= digit) {
            return 0
        }

        length++
        digit = numCopy % 10
        numCopy /= 10
    }

    var numReversed = 0
    var originalNum = num

    for (i in 0 until length) {
        numReversed = numReversed * 10 + originalNum % 10
        originalNum /= 10
    }

    return if (length > 1) numReversed else 0
}

fun main() {
    val count = readLine()!!.toInt()

    var remainingCount = count

    while (remainingCount > 0) {
        val number = readLine()!!.toInt()
        val result = numReverse(number)

        if (result != 0) {
            print("$result ")
        }

        remainingCount--
    }
}
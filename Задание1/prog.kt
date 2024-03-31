// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов

fun numberCopyOperation(s: String): Int {
    var i = s.length - (s.length % 2)
    var middle = i / 2

    while (i > middle) {
        if (s[i - 1] != s[i - middle - 1]) {
            i = if (i % 2 == 0) i else i - 1
            middle = i / 2
        }
        i -= 1
    }

    return middle
}

fun main() {
    print("Enter a string: ")
    val s = readLine() ?: ""

    val num = numberCopyOperation(s)
    val operationsCnt = s.length - num + if (num != 0) 1 else 0

    print("operations count: $operationsCnt")

    for (i in 0 until operationsCnt) {
        val lenOutStr = i + if (i < num || num == 0) 1 else num
        print(if (i == 0) " = ${s.substring(0, lenOutStr)}" else "->${s.substring(0, lenOutStr)}")
    }
} 

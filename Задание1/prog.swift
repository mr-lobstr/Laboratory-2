// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов

func numberCopyOperation(_ s: String) -> Int {
    var i = s.count - (s.count % 2)
    var middle = i / 2

    while i > middle {
        if s[s.index(s.startIndex, offsetBy: i-1)] != s[s.index(s.startIndex, offsetBy: i - middle - 1)] {
            i = i % 2 == 0 ? i : i - 1
            middle = i / 2
        }
        i -= 1
    }

    return middle
}

var s = readLine() ?? ""

let num = numberCopyOperation(s)
let operationsCnt = s.count - num + (num != 0 ? 1 : 0)

print("operations count: \(operationsCnt)", terminator: "")

for i in 0..<operationsCnt {
    let lenOutStr = i + (i < num || num == 0 ? 1 : num)
    if i == 0 {
        print(" = \(String(s.prefix(lenOutStr)))", terminator: "")
    } else {
        print("->\(String(s.prefix(lenOutStr)))", terminator: "")
    }
}
 

func numReverse(_ num: Int) -> Int {
    var length = 0
    var numCopy = num
    var digit = 10
    
    while numCopy != 0 {
        if numCopy % 10 >= digit {
            return 0
        }
        
        length += 1
        digit = numCopy % 10
        numCopy /= 10
    }
    
    var numReversed = 0
    var numCopy2 = num
    
    for _ in 0..<length {
        numReversed = numReversed * 10 + numCopy2 % 10
        numCopy2 /= 10
    }
    
    return length > 1 ? numReversed : 0
}

var count = Int(readLine()!)!

while count > 0 {
    let number = Int(readLine()!)!
    let result = numReverse(number)
    
    if result != 0 {
        print(result, terminator: " ")
    }
    
    count -= 1
}
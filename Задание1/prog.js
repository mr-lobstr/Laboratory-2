// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов

function numberCopyOperation(s) {
    let i = s.length - (s.length % 2);
    let middle = Math.floor(i / 2);

    while (i > middle) {
        if (s.charAt(i - 1) !== s.charAt(i - middle - 1)) {
            i = (i % 2 === 0 ? i : i - 1);
            middle = Math.floor(i / 2);
        }
        i--;
    }

    return middle;
}

let s = prompt();

let num = numberCopyOperation(s);
let operationsCnt = s.length - num + (num ? 1 : 0);

let output = "operations count: " + operationsCnt;
for (let i = 0; i < operationsCnt; i++) {
    let lenOutStr = i + (i < num || num === 0 ? 1 : num);
    output += i ? "->" + s.slice(0, lenOutStr) : " = " + s.slice(0, lenOutStr);
}

console.log(output); 

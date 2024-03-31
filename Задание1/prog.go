package main

import (
 "fmt"
)

// возвращаемое значение функции,
// представляет собой номер (нумерация с 0) операции копирования строки,
// а так же кол-во копируемых символов

func numberCopyOperation(s string) int {
 i := len(s) - (len(s) % 2)
 middle := i / 2

 for i > middle {
  if s[i-1] != s[i-middle-1] {
   i -= 1 - i%2
   middle = i / 2
  }
  i--
 }

 return middle
}

func main() {
 var s string
 fmt.Scanln(&s)

 num := numberCopyOperation(s)
 operationsCnt := len(s) - num + map[bool]int{true: 1, false: 0}[num != 0]

 fmt.Printf("operations count: %d", operationsCnt)

 for i := 0; i < operationsCnt; i++ {
  lenOutStr := i + map[bool]int{true: 1, false: num}[i < num || num == 0]
  if i == 0 {
   fmt.Printf(" = %s", s[:lenOutStr])
  } else {
   fmt.Printf("->%s", s[:lenOutStr])
  }
 }
} 

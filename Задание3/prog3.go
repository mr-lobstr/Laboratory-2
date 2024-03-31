package main

import (
	"fmt"
	"strconv"
)

func numReverse(num int) int {
	length := 0
	numCopy := num
	digit := 10

	for numCopy > 0 {
		if numCopy%10 >= digit {
			return 0
		}

		length++
		digit = numCopy % 10
		numCopy /= 10
	}

	numCopy = 0
	for i := 0; i < length; i++ {
		numCopy = numCopy*10 + num%10
		num /= 10
	}

	if length > 1 {
		return numCopy
	} else {
		return 0
	}
}

func main() {
	var count int
	fmt.Scan(&count)

	for count > 0 {
		var number int
		fmt.Scan(&number)
		result := numReverse(number)

		if result != 0 {
			fmt.Print(strconv.Itoa(result) + " ")
		}

		count--
	}
}
package main

import (
	"fmt"
)

func main() {
	var countMatch int
	var nextRound int
	fmt.Scan(&nextRound)

	for nextRound > 1 {
		if nextRound%2 == 1 {
			nextRound = (nextRound - 1) / 2 + 1
			countMatch += (nextRound - 1)
		} else {
			nextRound /= 2
			countMatch += nextRound
		}
	}

	fmt.Println(countMatch)
}
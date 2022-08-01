package main

import (
	"fmt"
	"math"
	"time"
)

func main() {
	var t int
	fmt.Print("Enter a time in seconds: ")
	fmt.Scanf("%d", &t)

	for t != 0 {
		mins := math.Floor(float64(t) / 60.0)
		secs := t % 60
		fmt.Printf("%02v:%02v\r", mins, secs)
		time.Sleep(1 * time.Second)
		t--
	}
}

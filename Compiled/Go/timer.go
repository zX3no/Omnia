package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
	"time"
)

func main() {
	s := bufio.NewReader(os.Stdin)
	fmt.Print("Enter time in seconds: ")
	text, _ := s.ReadString('\r')
	text = strings.TrimSuffix(text, "\r")

	t, _ := strconv.Atoi(text)

	for t != 0 {
		mins := math.Floor(float64(t) / 60.0)
		secs := t % 60
		fmt.Printf("%02v:%02v\r", mins, secs)
		time.Sleep(1 * time.Second)
		t--
	}
}

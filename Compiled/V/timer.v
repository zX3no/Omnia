import time
import os
import math

fn main() {
	input := os.input('Enter the time in seconds: ')
	mut t := input.i16()

	for t != 0 {
		mins := math.floor(t / 60)
		secs := t % 60
		print('${mins:02}:${secs:02}   \r')
		time.sleep(1 * time.second)
		t -= 1
	}
}

package main

import "core:fmt"
import "core:time"
import "core:os"
import "core:bufio"
import "core:io"
import "core:strings"
import "core:math"
import "core:strconv"

main :: proc() {
	s := os.stream_from_handle(os.stdin)
	r: bufio.Reader
	bufio.reader_init(&r, io.Reader{s})

	fmt.printf("Enter the time in seconds: ")
	line, err := bufio.reader_read_string(&r, '\n')
	assert(err == .None)
	input := strings.trim_space(line)

	t := strconv.atoi(input)

	for t != 0 {
		mins := i32(math.floor(f32(t) / 60))
		secs := t % 60
		fmt.printf("%02d:%02d\r", mins, secs)
		time.sleep(1 * time.Second)
		t -= 1
	}
}

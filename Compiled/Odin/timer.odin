package main

import "core:fmt"
import "core:time"
import "core:os"
import "core:bufio"
import "core:io"
import "core:strings"

main :: proc() {
	s := os.stream_from_handle(os.stdin)
	r: bufio.Reader
	bufio.reader_init(&r, io.Reader{s})

	line, err := bufio.reader_read_string(&r, '\n')
	assert(err == .None)

	trimmed := strings.trim_space(line)

	fmt.printf("read:    %q\n", line)
	fmt.printf("trimmed: %q\n", trimmed)

	// time.sleep(1 * time.Millisecond)
}

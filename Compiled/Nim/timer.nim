import std/math, strutils, strformat
import os

write(stdout, "Enter the time in seconds: ")

var s = readLine(stdin)
var t = parseInt(s)

while t != 0:
    var mins = math.floor(t / 60)
    var secs = t mod 60

    var str = &"{mins:02}:{secs:02}\r"
    write(stdout, str)

    os.sleep(1000)
    t -= 1
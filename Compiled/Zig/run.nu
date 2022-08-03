zig build-exe timer.zig
if $env.LAST_EXIT_CODE == 0 {
    ./timer 
}
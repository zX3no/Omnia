tcc timer.c -o timer.exe

if $env.LAST_EXIT_CODE == 0 {
    ./timer.exe
}
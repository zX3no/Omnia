# All tests are done in debug mode
$c = Measure-Command {
    gcc Compiled/C/timer.c -o Compiled/C/timer.exe
} | Select-Object -Property TotalMilliseconds

$cpp = Measure-Command {
    g++ Compiled/CPP/timer.cpp -o Compiled/CPP/timer.exe
} | Select-Object -Property TotalMilliseconds

Set-Location Compiled/Go
$go = Measure-Command {
    go build 
} | Select-Object -Property TotalMilliseconds
Set-Location ../../

Remove-Item Compiled/Rust/target -Recurse -Force -ErrorAction Ignore
$rust = Measure-Command {
    cargo build --manifest-path Compiled/Rust/Cargo.toml
} | Select-Object -Property TotalMilliseconds

$v = Measure-Command {
    v Compiled/v 
} | Select-Object -Property TotalMilliseconds

$nim = Measure-Command {
    nim c Compiled/Nim/timer.nim
} | Select-Object -Property TotalMilliseconds

Set-Location Compiled/Zig
Remove-Item zig-cache -Recurse -Force -ErrorAction Ignore
Remove-Item zig-out -Recurse -Force -ErrorAction Ignore
$zig = Measure-Command {
    zig build 
} | Select-Object -Property TotalMilliseconds
Set-Location ../../

Set-Location Compiled/Odin
Remove-Item timer.exe -Force -ErrorAction Ignore
$odin = Measure-Command {
    odin build timer.odin
} | Select-Object -Property TotalMilliseconds
Set-Location ../../

echo $c
echo $cpp
echo $go
echo $rust
echo $v
echo $nim
echo $zig
echo $odin
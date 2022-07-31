cd Compiled/Rust
hyperfine --prepare 'cargo clean' 'cargo build' -w 10 -m 50
cd ../../

cd Compiled/Rust
hyperfine --prepare 'del timer.exe timer.pdb' 'rustc main.rs -o timer.exe' -w 10 -m 50
cd ../../

cd Compiled/v
hyperfine --prepare 'del timer.exe' 'v . -o timer.exe' -w 10 -m 50
cd ../../

cd Compiled/C
hyperfine --prepare 'del timer.exe' 'gcc timer.c -o timer.exe' -w 10 -m 50
hyperfine --prepare 'del timer.exe' 'tcc timer.c -o timer.exe' -w 10 -m 50
cd ../../

cd Compiled/CPP
hyperfine --prepare 'del timer.exe' 'g++ timer.cpp -o timer.exe' -w 10 -m 50
cd ../../

cd Compiled/Zig
hyperfine --prepare 'del timer.exe timer.pdb' 'zig build-exe timer.zig' -w 10 -m 50
cd ../../
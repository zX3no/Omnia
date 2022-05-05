cd D:/Git/Omnia/Compiled/Rust
hyperfine --prepare 'cargo clean' 'cargo build' -w 10 -m 50

cd D:/Git/Omnia/Compiled/Rust
hyperfine --prepare 'del timer.exe timer.pdb' 'rustc src/main.rs -o timer.exe' -w 10 -m 50
del timer.exe timer.pdb

cd D:/Git/Omnia/Compiled/v
hyperfine --prepare 'del timer.exe' 'v . -o timer.exe' -w 10 -m 50

cd D:/Git/Omnia/Compiled/C
hyperfine --prepare 'del timer.exe' 'gcc timer.c -o timer.exe' -w 10 -m 50

cd D:/Git/Omnia/Compiled/CPP
hyperfine --prepare 'del timer.exe' 'g++ timer.cpp -o timer.exe' -w 10 -m 50
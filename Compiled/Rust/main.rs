use std::{
    io::{stdin, stdout, Write},
    thread,
    time::Duration,
};

fn main() {
    let mut s = String::new();
    eprint!("Please enter the time in seconds: ");
    stdin().read_line(&mut s).unwrap();

    let mut t: i32 = s.trim().parse().unwrap();

    while t != 0 {
        let mins = (t as f32 / 60.0).floor();
        let secs = t % 60;
        print!("{:02}:{:02}\r", mins, secs);
        stdout().flush().unwrap();
        thread::sleep(Duration::from_secs(1));
        t -= 1;
    }
}

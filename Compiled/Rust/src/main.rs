// use read_io::read;
use std::{
    io::{stdin, stdout, Write},
    thread,
    time::Duration,
};

fn main() {
    // let mut t: i32 = read!("Enter the time in seconds: ");

    let mut s = String::new();
    eprint!("Please enter the time in seconds: ");
    stdin().read_line(&mut s).unwrap();

    s.pop();
    s.pop();

    let mut t = s.parse::<i32>().unwrap();

    while t != 0 {
        let mins = (t as f32 / 60.0).floor();
        let secs = t % 60;
        print!("{:02}:{:02}\r", mins, secs);
        stdout().flush().unwrap();
        thread::sleep(Duration::from_secs(1));
        t -= 1;
    }
}

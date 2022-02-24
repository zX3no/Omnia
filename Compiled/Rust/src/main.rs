use read_io::read;
use std::{
    io::{stdout, Write},
    thread,
    time::Duration,
};

fn main() {
    let mut t: i32 = read!("Enter the time in seconds: ");

    while t != 0 {
        let mins = (t as f32 / 60.0).floor();
        let secs = t % 60;
        print!("{:02}:{:02}\r", mins, secs);
        stdout().flush().unwrap();
        thread::sleep(Duration::from_secs(1));
        t -= 1;
    }
}

import gleam/io
import gleam/erlang
import gleam/int
import gleam/string
import gleam/float

fn loop(i: Int) {
  case i {
    0 -> io.print("")
    n -> {
      let f = int.to_float(i) /. 60.0
      let m = float.floor(f)
      let mins = float.round(m)
      let secs = i % 60
      io.print(int.to_string(mins))
      io.print(":")
      io.print(int.to_string(secs))
      io.print("  \r")
      erlang.sleep(1 * 1000)
      loop(i - 1)
    }
  }
}

pub fn main() {
  case erlang.get_line("Enter a time in seconds: ") {
    Ok(s) ->
      case int.parse(string.trim(s)) {
        Ok(t) -> loop(t)
        Error(e) -> io.println("Invalid number.")
      }
    Error(e) -> io.println("Invalid number.")
  }
}

import gleam/io
import gleam/erlang
import gleam/int
import gleam/os

fn loop(i: Int) {
  case i {
    0 -> io.println("")
    n -> {
      io.println(int.to_string(i))
      loop(i - 1)
    }
  }
}

pub fn main() {
  loop(60)
  // case erlang.get_line("Enter a time in seconds: ") {
  //   Ok(s) ->
  //     case int.parse(s) {
  //       Ok(t) -> loop(60)
  //       //how to loop?
  //       Error(e) -> return
  //     }
  //   Error(e) -> return
  // }
}

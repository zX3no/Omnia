import gleam/io
import gleam/erlang
import gleam/int
import gleam/string
import gleam/float

fn loop(i: Int) {
  case i {
    0 -> io.print("Done.")
    _ -> {
      let f = int.to_float(i) /. 60.0
      let m = float.floor(f)
      let mins = float.round(m)
      let secs = i % 60
      //Gleam does not have print formatting
      io.print(
        int.to_string(mins)
        |> string.append(":")
        |> string.append(int.to_string(secs))
        |> string.append("  \r"),
      )
      erlang.sleep(1000)
      loop(i - 1)
    }
  }
}

pub fn main() {
  //TODO: for some reason get_line doesn't work anymore?
  assert Ok(input) = erlang.get_line("Enter a time in seconds: ")
  assert Ok(t) =  string.trim(input) |> int.parse()

  loop(t)
}

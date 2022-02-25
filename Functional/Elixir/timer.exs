defmodule Timer do
  def run(t) do
    mins = Integer.floor_div(t, 60)
    secs = rem(t, 60)

    IO.write(mins)
    IO.write(":")
    IO.write(secs)
    IO.write(' \r')

    Process.sleep(1000)

    if t != 0, do: run(t - 1)
  end
end

{t, _} = IO.gets("Enter a time in seconds: ") |> String.trim() |> Integer.parse()

Timer.run(t)

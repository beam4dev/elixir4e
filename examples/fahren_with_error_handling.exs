inp = IO.gets("Enter Fahrenheit Temperature:") |> String.trim()

try do
  fahr = String.to_float(inp)
  cel = (fahr - 32.0) * 5.0 / 9.0
  IO.puts(cel)
rescue
  _error ->
    try do
      fahr = String.to_integer(inp)
      cel = (fahr - 32.0) * 5.0 / 9.0
      IO.puts(cel)
    rescue
      _error -> IO.puts("Please enter a number:\n")
    end
end

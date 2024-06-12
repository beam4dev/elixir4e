input = IO.gets("Enter Fahrenheit Temperature:") |> String.trim
fahr = String.to_float(input)
cel = (fahr - 32.0) * 5.0 / 9.0
IO.puts cel

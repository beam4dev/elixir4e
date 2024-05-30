# Livebook Blogpost
# https://www.thestackcanary.com/elixirs-secret-weapon/
# Livebook working with files
# https://peterullrich.com/work-with-files-in-livebook
# Read the file name from the user
IO.puts("Enter file: ")
name = String.trim(IO.gets(""))

{word, count}=File.stream!(name)
  |> Stream.map(&String.split(&1, ~r{\s+}, trim: true))
  |> Stream.filter(&Enum.empty?(&1) == false)
  |> Enum.to_list() |>  List.flatten()
  |> Enum.frequencies()
  |> Enum.max_by(fn {_, value} -> value end)
  |> IO.inspect

IO.puts("The most used word is `#{word}` with #{count} appearences")

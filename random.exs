# The following piece of code prompts a user to insert a lower limit number and a high limit number and then it prints a random number between the two limits.
# To run this program run elixir random.exs

print_random_number = fn() ->
  {x, _} = IO.gets("Lower Limit:\n") |> Integer.parse
  {y, _} = IO.gets("Higher Limit:\n") |> Integer.parse
  Enum.random(x..y)
end

IO.puts("\nRandom Number:  #{print_random_number.()}")

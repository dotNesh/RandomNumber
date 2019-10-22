# The following piece of code prompts a user to insert a lower limit number and a high limit number and then it prints a random number between the two limits.
# To run this program run elixir random.exs

print_random_number = fn() ->
    {low_limit, _} = IO.gets("Lower Limit:\n") |> Integer.parse
    {high_limit, _} = IO.gets("Higher Limit\n") |> Integer.parse
    Enum.random(low_limit..high_limit)
end

IO.puts("\nRandom Number:  #{print_random_number.()}")

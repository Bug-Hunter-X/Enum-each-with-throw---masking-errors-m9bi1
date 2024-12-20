```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    else
      IO.puts(x)
    end
    IO.puts("Continuing...")
  end)
rescue
  e ->
    IO.puts("Exception caught: #{inspect(e)}")
end

IO.puts("Processing completed, even after the exception")
```
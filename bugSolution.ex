```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.reduce(list, 0, fn x, acc ->
    if x == 3 do
      throw(:three_found)
    else
      acc + x
    end
  end)
rescue
  e in :three_found ->
    IO.puts("Three found! Stopping reduction.")
    0 
  e ->
    IO.puts("An unexpected error occurred: #{inspect(e)}")
    :error
end
```
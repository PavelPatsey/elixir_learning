# For8. Даны два целых числа A и B (A < B). Найти произведение всех целых чи-
# сел от A до B включительно.

[a, b] =
  IO.gets("Enter a and b\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

Enum.reduce(a..b, 1, fn x, acc -> acc * x end)
|> IO.puts()

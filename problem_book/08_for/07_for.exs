# For7. Даны два целых числа A и B (A < B). Найти сумму всех целых чисел от A
# до B включительно.

[a, b] =
  IO.gets("Enter a and b\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

IO.puts(Enum.sum(a..b))

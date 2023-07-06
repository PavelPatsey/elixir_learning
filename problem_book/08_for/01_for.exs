# For1. Даны целые числа K и N (N > 0). Вывести N раз число K.

[k, n] =
  IO.gets("Enter k and n\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

for _ <- 1..n, do: IO.puts(k)

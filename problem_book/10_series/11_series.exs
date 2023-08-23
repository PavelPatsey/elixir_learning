# Series11. Даны целые числа K, N и набор из N целых чисел. Если в наборе
# имеются числа, меньшие K, то вывести TRUE; в противном случае вывести
# FALSE.

# test
# input
# 3 5
# 2 1 4 5 7
# output
# true

# input
# 3 5
# 4 5 6 3 7
# output
# false

[k, n] =
  IO.gets("Enter k and n integer numbers\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

list =
  IO.gets("Enter n integer numbers\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

answer =
  Enum.map(list, fn x -> if x < k, do: true, else: false end)
  |> Enum.any?()

IO.puts(answer)

# Series1. Даны десять вещественных чисел. Найти их сумму.

# test
# input
# 1 2 3 4 5 6 7 8 9 10
# output
# 0

list =
  IO.gets("Enter 10 float numbers\n")
  |> String.trim()
  |> String.split()
  |> IO.inspect()
  |> Enum.map(&elem(Float.parse(&1), 0))
  |> IO.inspect()

IO.puts(Enum.sum(list))

# Series5. Дано целое число N и набор из N положительных вещественных
# чисел. Вывести в том же порядке целые части всех чисел из данного
# набора (как вещественные числа с нулевой дробной частью), а также
# сумму всех целых частей.

# test
# input
# 3
# 1.9 2.1 3.10
# output
# 6

n =
  IO.gets("Enter integer n > 0\n")
  |> String.trim()
  |> String.to_integer()

list =
  IO.gets("Enter n float numbers\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&elem(Float.parse(&1), 0))
  |> Enum.map(&trunc/1)

IO.puts(Enum.join(list, " "))
IO.puts(Enum.sum(list))

# Series9. Дано целое число N и набор из N целых чисел. Вывести в том же
# порядке номера всех нечетных чисел из данного набора и количество K
# таких чисел.

# test
# input
# 5
# 1 2 5 6 7
# output
# 1 3 5
# 3

n =
  IO.gets("Enter integer n > 0\n")
  |> String.trim()
  |> String.to_integer()

list =
  IO.gets("Enter n integer numbers\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

zipped_list = List.zip([Enum.to_list(1..n), list])

filtered_list = Enum.filter(zipped_list, fn x -> rem(elem(x, 1), 2) != 0 end)

Enum.map(filtered_list, &elem(&1, 0))
|> Enum.join(" ")
|> IO.puts()

IO.puts(length(filtered_list))

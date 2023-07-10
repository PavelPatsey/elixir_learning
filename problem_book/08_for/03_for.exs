# For3. Даны два целых числа A и B (A < B). Вывести в порядке убывания все
# целые числа, расположенные между A и B (не включая числа A и B), а
# также количество N этих чисел.

"""
test
input
1 2
output
0

input
4 7
output
6
5
2
"""

[a, b] =
  IO.gets("Enter A and B (A < B)\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

list =
  Enum.filter(a..b, fn x -> x > a and x < b end)
  |> Enum.reverse()

for n <- list, do: IO.puts(n)
IO.puts(Enum.count(list))

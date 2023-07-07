# For2. Даны два целых числа A и B (A < B). Вывести в порядке возрастания все
# целые числа, расположенные между A и B (включая сами числа A и B), а
# также количество N этих чисел.

"""
test
input
1 2
output
1
2
2

input
4 7
output
4
5
6
7
4
"""

[a, b] =
  IO.gets("Enter a and b\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

for n <- a..b, do: IO.puts(n)

IO.puts(Enum.count(a..b))

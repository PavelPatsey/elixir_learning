# For9. Даны два целых числа A и B (A < B). Найти сумму квадратов всех целых
# чисел от A до B включительно.

"""
test
input
1 2
output
5

input
0 4
output
30
"""

[a, b] =
  IO.gets("Enter A and B (A < B)\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

Enum.reduce(a..b, 0, fn x, acc -> x ** 2 + acc end)
|> IO.puts()

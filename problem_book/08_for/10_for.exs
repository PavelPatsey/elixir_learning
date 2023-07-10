# For10. Дано целое число N (> 0). Найти сумму
# 1 + 1/2 + 1/3 + . . . + 1/N

"""
test
input
1
output
1

input
2
output
1.5
(1 + 1/2)

input
5
output
(1 + 1/2 + 1/3 + 1/4 + 1/5)
2.283333333333333

"""

n =
  IO.gets("Enter N (> 0)\n")
  |> String.trim()
  |> String.to_integer()

answer =
  Enum.map(1..n, fn x -> 1 / x end)
  |> Enum.sum()
  |> IO.inspect()

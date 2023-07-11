# For12◦. Дано целое число N (> 0). Найти произведение
# 1.1 · 1.2 · 1.3 · . . .
# (N сомножителей).

"""
test
input
1
output
1.1

input
2
output
(1.1 · 1.2 = )
1.32

input
12
output
(1.1 * 1.2 * 1.3 * 1.4 * 1.5 * 1.6 * 1.7 * 1.8 * 1.9 * 1.10 * 1.11 * 1.12 = 45.84218135777281)
45.84218135777281
"""

n =
  IO.gets("Enter N (> 0)\n")
  |> String.trim()
  |> String.to_integer()

answer =
  Enum.map(1..n, fn x -> "1.#{x}" end)
  |> Enum.map(&String.to_float/1)
  |> Enum.product()

IO.puts(Float.floor(answer, 3))

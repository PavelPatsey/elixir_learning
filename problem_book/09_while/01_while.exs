# While1. Даны положительные числа A и B (A > B). На отрезке длины A разме-
# щено максимально возможное количество отрезков длины B (без наложе-
# ний). Не используя операции умножения и деления, найти длину незанятой
# части отрезка A.

# test
# input
# 3 1
# output
# 0

# input
# 4 3
# output
# 1

[a, b] =
  IO.gets("Enter a and b > 0\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&elem(Float.parse(&1), 0))

defmodule While01 do
  def mod(a, b) when a >= b, do: mod(a - b, b)

  def mod(a, _), do: a
end

IO.puts(While01.mod(a, b))

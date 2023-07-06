# Case12. Элементы окружности пронумерованы следующим образом: 1 — радиус R, 2 — диаметр D = 2·R, 3 — длина L = 2·π·R, 4 — площадь круга S = π·R2.
# Дан номер одного из этих элементов и его значение. Вывести
# значения остальных элементов данной окружности (в том же порядке). В
# качестве значения π использовать 3.14.

"""
test
input
1 1
output
1 2 6.28 3.14

input
2 4
output
2 4 12.56 12.56

input
4 10
output
1.78 3.57 11.21 10
"""

pi = 3.14

[element, value] =
  IO.gets("Enter element and value\n")
  |> String.trim()
  |> String.split()
  |> IO.inspect()
  |> Enum.map(&Float.parse/1)
  |> IO.inspect()
  |> Enum.map(fn x -> elem(x, 0) end)
  |> IO.inspect()

r =
  case element do
    1.0 -> value
    2.0 -> value / 2
    3.0 -> value / (2 * pi)
    4.0 -> :math.sqrt(value / pi)
  end

answer =
  [r, 2 * r, 2 * pi * r, pi * r ** 2]
  |> Enum.map(fn x -> Float.ceil(x, 2) end)

IO.puts(Enum.join(answer, " "))

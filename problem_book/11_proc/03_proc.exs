# Proc3. Описать процедуру Mean(X, Y, AMean, GMean), вычисляющую
# среднее арифметическое AMean = (X+Y)/2 и среднее геометрическое
# GMean =
# √
# X·Y двух положительных чисел X и Y (X и Y — входные,
# AMean и GMean — выходные параметры вещественного типа). С помощью
# этой процедуры найти среднее арифметическое и среднее геометрическое
# для пар (A, B), (A, C), (A, D), если даны A, B, C, D.

defmodule Proc3 do
  def mean(x, y) do
    amean = (x + y) / 2
    gmean = :math.sqrt(x * y)
    [amean, gmean]
  end
end

[a, b, c, d] =
  IO.gets("Enter positive numbers a, b, c, d\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&Float.parse/1)
  |> Enum.map(fn x -> elem(x, 0) end)

IO.puts(Proc3.mean(a, b) |> Enum.join(" "))
IO.puts(Proc3.mean(a, c) |> Enum.join(" "))
IO.puts(Proc3.mean(a, d) |> Enum.join(" "))

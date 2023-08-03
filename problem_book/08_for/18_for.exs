# For18. Дано вещественное число A и целое число N (> 0). Используя один
# цикл, найти значение выражения
# 1 − A + A**2 − A**3 + . . . + (−1)**N ·A**N .

# test
# input
# 1.2 1
# output
# -0.2

# test
# input
# 1 2
# output
# 1

# input
# 1.2 3
# output
# -0.48799

[str_a, str_n] =
  IO.gets("Enter float a and integer n\n")
  |> String.trim()
  |> String.split()

a = elem(Float.parse(str_a), 0)
n = elem(Integer.parse(str_n), 0)

defmodule For18 do
  def run(a, n) do
    _run(a, n, 0)
  end

  defp _run(_, 0, acc), do: acc + 1

  defp _run(a, n, acc), do: _run(a, n - 1, acc + -1 ** n * a ** n)
end

IO.puts(For18.run(a, n))

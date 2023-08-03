# For17. Дано вещественное число A и целое число N (> 0). Используя один цикл,
# найти сумму
# 1 + A + A2 + A3 + … + AN.

# test
# input
# 1.2 1
# output
# 2.2

# input
# 1.2 3
# output
# 5.368

[a_str, n_str] =
  IO.gets("Enter float a and integer n\n")
  |> String.trim()
  |> String.split()

a = elem(Float.parse(a_str), 0)
n = elem(Integer.parse(n_str), 0)

defmodule For17 do
  def run(a, n) do
    _run(a, n, 0)
  end

  defp _run(_, 0, acc), do: acc + 1

  defp _run(a, n, acc), do: _run(a, n - 1, acc + a ** n)
end

IO.puts(For17.run(a, n))

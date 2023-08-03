# For36. Даны целые положительные числа N и K. Найти сумму
# 1**K + 2**K + . . . + N**K.
# Чтобы избежать целочисленного переполнения, вычислять слагаемые
# этой суммы с помощью вещественной переменной и выводить результат как вещественное число.

# test
# input
# 1 3
# output
# 3

# test
# input
# 2 3
# output
# 9

[n, k] =
  IO.gets("Enter integer n and k > 0\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

defmodule For36 do
  def get_answer(n, k), do: _get_answer(n, k, 0)

  defp _get_answer(1, _, acc), do: acc + 1

  defp _get_answer(n, k, acc), do: _get_answer(n - 1, k, acc + n ** k)
end

IO.puts(For36.get_answer(n, k))

# For37. Дано целое число N (> 0). Найти сумму
# 1**1 + 2**2 + . . . + N**N .
# Чтобы избежать целочисленного переполнения, вычислять слагаемые
# этой суммы с помощью вещественной переменной и выводить результат как вещественное число.

# tests
# input
# 1
# output
# 1
#
# input
# 2
# output
# 5
#
# input
# 3
# output
# 14

n =
  IO.gets("Enter integer n > 0\n")
  |> String.trim()
  |> String.to_integer()

defmodule For37 do
  def get_answer(n), do: _get_answer(n, 0)

  defp _get_answer(1, acc), do: acc + 1

  defp _get_answer(n, acc), do: _get_answer(n - 1, acc + n ** n)
end

IO.puts(For37.get_answer(n))

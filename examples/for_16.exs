"""
For16°. Дано вещественное число A и целое число N (> 0). Используя один
цикл, вывести все целые степени числа A от 1 до N.
"""

defmodule For16 do
  def run(a, n) do
    _run(a, n, a, [])
  end

  defp _run(_, 1, power, acc), do: [power | acc]

  defp _run(a, n, power, acc) do
    _run(a, n - 1, power * a, [power | acc])
  end
end

IO.inspect(For16.run(2, 3))

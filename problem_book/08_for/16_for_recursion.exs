# For16◦. Дано вещественное число A и целое число N (> 0). Используя один
# цикл, вывести все целые степени числа A от 1 до N.

# test
# input
# 1.2 1
# output
# 1.2

# input
# 1.0 1
# output
# 1.0

# input
# 1.2 3
# output
# 1.7279999999999998
# 1.44
# 1.2

[str_a, str_n] =
  IO.gets("Enter float a and integer n\n")
  |> String.trim()
  |> String.split()

a = elem(Float.parse(str_a), 0)
n = elem(Integer.parse(str_n), 0)

defmodule For16 do
  def run(a, n) do
    _run(a, n, a, [])
  end

  defp _run(_, 1, power, acc), do: [power | acc]

  defp _run(a, n, power, acc) do
    _run(a, n - 1, power * a, [power | acc])
  end
end

IO.puts(For16.run(a, n) |> Enum.join("\n"))

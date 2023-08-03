# For19. Дано целое число N (> 0). Найти произведение
# N! = 1·2·. . .·N
# (N–факториал). Чтобы избежать целочисленного переполнения, вычислять это произведение с помощью вещественной переменной и вывести
# его как вещественное число.

# test
# input
# 1
# output
# 1

# test
# input
# 2
# output
# 2

# input
# 3
# output
# 6

n =
  IO.gets("Enter integer number n\n")
  |> String.trim()
  |> String.to_integer()
  |> IO.inspect()

defmodule For19 do
  def get_factorial(n), do: _get_factorial(n, 1)

  defp _get_factorial(1, acc), do: acc

  defp _get_factorial(n, acc), do: _get_factorial(n - 1, acc * n)
end

IO.puts(For19.get_factorial(n))

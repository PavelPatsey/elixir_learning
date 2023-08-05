# While4. Дано целое число N (> 0). Если оно является степенью числа 3, то вы-
# вести True, если не является — вывести False.

# tests
# input
# 3
# output
# True

# input
# 4
# output
# False

# input
# 81
# output
# True

# input
# 1
# output
# True

n =
  IO.gets("Enter integer n > 0\n")
  |> String.trim()
  |> String.to_integer()

defmodule While09 do
  def power_of_3?(1), do: true

  def power_of_3?(x) when rem(x, 3) == 0, do: power_of_3?(div(x, 3))

  def power_of_3?(_), do: false
end

IO.puts(While09.power_of_3?(n))

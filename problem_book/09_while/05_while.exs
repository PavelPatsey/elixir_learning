# While5. Дано целое число N (> 0), являющееся некоторой степенью числа 2:
# N = 2**K. Найти целое число K — показатель этой степени

# tests
# input
# 1
# output
# 0

# input
# 2
# output
# 1

# input
# 16
# output
# 4

defmodule While05 do
  def get_power_of_2(n), do: _get_power_of_2(n, 0)

  defp _get_power_of_2(1, acc), do: acc

  defp _get_power_of_2(n, acc), do: _get_power_of_2(div(n, 2), acc + 1)
end

n =
  IO.gets("Enter integer n > 0 and n = 2**k\n")
  |> String.trim()
  |> String.to_integer()

IO.puts(While05.get_power_of_2(n))

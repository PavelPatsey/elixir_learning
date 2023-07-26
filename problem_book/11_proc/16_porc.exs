# Proc16. Описать функцию Sign(X) целого типа, возвращающую для вещественного числа X следующие значения:
# −1, если X < 0; 0, если X = 0; 1, если X > 0.
# С помощью этой функции найти значение выражения Sign(A) + Sign(B)
# для данных вещественных чисел A и B.

defmodule Proc16 do
  def sign(x) do
    cond do
      x < 0 -> -1
      x == 0 -> 0
      x > 0 -> 1
      true -> "This is always true (equivalent to else)"
    end
  end
end

[a, b] =
  "Enter integer numbers a and b\n"
  |> IO.gets()
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

IO.puts(Proc16.sign(a) + Proc16.sign(b))

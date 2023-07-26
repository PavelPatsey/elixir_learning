# Proc7. Описать процедуру InvertDigits(K), меняющую порядок следования
# цифр целого положительного числа K на обратный (K — параметр целого
# типа, являющийся одновременно входным и выходным). С помощью этой
# процедуры поменять порядок следования цифр на обратный для каждого
# из пяти данных целых чисел.

k =
  IO.gets("Enter integer number k\n")
  |> String.trim()
  |> String.to_integer()

defmodule Proc7 do
  def invert_digits(k) do
    Integer.to_string(k)
    |> String.reverse()
    |> String.to_integer()
  end
end

IO.puts(Proc7.invert_digits(k))

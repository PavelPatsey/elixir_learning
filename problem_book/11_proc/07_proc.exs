# Proc7. Описать процедуру InvertDigits(K), меняющую порядок следования
# цифр целого положительного числа K на обратный (K — параметр целого
# типа, являющийся одновременно входным и выходным). С помощью этой
# процедуры поменять порядок следования цифр на обратный для каждого
# из пяти данных целых чисел.

list =
  IO.gets("Enter integer number k\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

defmodule Proc7 do
  def invert_digits(k) do
    Integer.to_string(k)
    |> String.reverse()
    |> String.to_integer()
  end
end

IO.puts(Enum.map(list, &Proc7.invert_digits/1) |> Enum.join(" "))

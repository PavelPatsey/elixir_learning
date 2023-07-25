# Proc1. Описать процедуру PowerA3(A, B), вычисляющую третью степень числа A и возвращающую ее в переменной B (A — входной, B — выходной
# параметр; оба параметра являются вещественными). С помощью этой
# процедуры найти третьи степени пяти данных чисел.

defmodule Proc1 do
  def powerA3(a) do
    a ** 3
  end
end

a =
  IO.gets("Enter float number a\n")
  |> String.trim()
  |> Float.parse()
  |> elem(0)

IO.inspect(Proc1.powerA3(a))

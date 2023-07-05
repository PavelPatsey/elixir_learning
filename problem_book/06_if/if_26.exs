# If26. Для данного вещественного x найти значение следующей функции f,
# принимающей вещественные значения:
# f (x) =
# −x, если x ≤ 0,
# x**2, если 0 < x < 2,
# 4, если x ≥ 2.

x =
  IO.gets("Enter x\n")
  |> String.trim()
  |> Float.parse()
  |> elem(0)

f =
  cond do
    x <= 0 -> -x
    x > 0 and x < 2 -> x ** 2
    x >= 2 -> 4
  end

IO.puts("#{f}")

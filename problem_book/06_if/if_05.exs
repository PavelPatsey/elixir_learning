# If5. Даны три целых числа. Найти количество положительных и количество
# отрицательных чисел в исходном наборе

list =
  "Enter 3 numbers\n"
  |> IO.gets()
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

IO.puts(
  Enum.filter(list, fn x -> x > 0 end)
  |> length()
)

IO.puts(
  Enum.filter(list, fn x -> x < 0 end)
  |> length()
)

# If6. Даны два числа. Вывести большее из них

[x, y] =
  "Enter x and y\n"
  |> IO.gets()
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

answer =
  if x > y do
    x
  else
    y
  end

IO.puts("#{answer}")

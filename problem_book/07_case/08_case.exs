# Case8. Даны два целых числа: D (день) и M (месяц), определяющие правильную дату невисокосного года. Вывести значения D и M для даты,
# предшествующей указанной.

[d, m] =
  IO.gets("Enter d and m\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

[d, m] =
  if d != 1 do
    [d, m]
  else
    [31, m - 1]
  end

IO.puts(Enum.join([d, m], " "))

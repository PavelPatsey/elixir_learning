# If16. Даны три переменные вещественного типа: A, B, C. Если их значения
# упорядочены по возрастанию, то удвоить их; в противном случае заменить значение каждой переменной на противоположное. Вывести новые
# значения переменных A, B, C.

[a, b, c] =
  IO.gets("Enter a, b, c\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

[a, b, c] =
  if a <= b and b <= c do
    [a, b, c]
  else
    [-a, -b, -c]
  end

IO.puts(Enum.join([a, b, c], " "))

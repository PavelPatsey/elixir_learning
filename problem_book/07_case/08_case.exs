# Case8. Даны два целых числа: D (день) и M (месяц), определяющие правильную дату невисокосного года. Вывести значения D и M для даты,
# предшествующей указанной.

"""
test
input
1 1
output
31 12

input
1 3
output
28 2

input
30 9
output
29 9
"""

[d, m] =
  IO.gets("Enter d and m\n")
  |> String.trim()
  |> String.split()
  |> Enum.map(&String.to_integer/1)

answer =
  if d != 1 do
    [d - 1, m]
  else
    case m do
      1 -> [31, 12]
      2 -> [31, 1]
      3 -> [28, 2]
      4 -> [31, 3]
      5 -> [30, 4]
      6 -> [31, 5]
      7 -> [30, 6]
      8 -> [31, 7]
      9 -> [31, 8]
      10 -> [30, 9]
      11 -> [31, 10]
      12 -> [30, 11]
    end
  end

IO.puts(Enum.join(answer, " "))

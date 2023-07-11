# For14. Дано целое число N (> 0). Найти квадрат данного числа, используя для
# его вычисления следующую формулу:
# N2 = 1 + 3 + 5 + . . . + (2·N − 1).
# После добавления к сумме каждого слагаемого выводить текущее значение суммы (в результате будут выведены квадраты всех целых чисел от 1
# до N).

# test
# input
# 1
# output
# 1

# input
# 2
# output
# 1
# 4

# input
# 5
# output
# 1
# 4
# 9
# 16
# 25

n =
  IO.gets("Enter N (> 0)\n")
  |> String.trim()
  |> String.to_integer()

list = Enum.map(1..n, fn x -> 2 * x - 1 end)

for i <- 0..(length(list) - 1) do
  Enum.slice(list, 0..i)
  |> Enum.sum()
  |> IO.inspect()
end

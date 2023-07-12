# For16◦. Дано вещественное число A и целое число N (> 0). Используя один
# цикл, вывести все целые степени числа A от 1 до N.

# test
# input
# 1.2 1
# output
# 1.2

# input
# 1.0 1
# output
# 1.0

# input
# 1.2 3
# output
# 1.2
# 1.44
# 1.7279999999999998

[str_a, str_n] =
  IO.gets("Enter float a and integer n\n")
  |> String.trim()
  |> String.split()

a = elem(Float.parse(str_a), 0)
n = elem(Integer.parse(str_n), 0)

for x <- 1..n do
  IO.puts(a ** x)
end

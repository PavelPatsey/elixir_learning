# For4. Дано вещественное число — цена 1 кг конфет. Вывести стоимость 1,
# 2, …, 10 кг конфет.

n = IO.gets("Enter number\n")
  |> String.trim()
  |> String.to_integer()

for k <- 1..10, do:
  IO.puts(n*k)

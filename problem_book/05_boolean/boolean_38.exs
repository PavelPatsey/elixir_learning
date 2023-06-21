# Boolean38. Даны координаты двух различных полей шахматной доски x1,
# y1, x2, y2 (целые числа, лежащие в диапазоне 1–8). Проверить истинность
# высказывания: «Слон за один ход может перейти с одного поля на другое».

IO.puts("Enter numbers x1, y1, x2, y2\n")

x1 = String.to_integer(String.trim(IO.gets("x1 = \n")))
y1 = String.to_integer(String.trim(IO.gets("y1 = \n")))
x2 = String.to_integer(String.trim(IO.gets("x2 = \n")))
y2 = String.to_integer(String.trim(IO.gets("y2 = \n")))

IO.puts(abs(x2 - x1) == abs(y2 - y1))

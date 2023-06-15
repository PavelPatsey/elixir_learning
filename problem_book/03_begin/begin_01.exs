# Begin1. Дана сторона квадрата a. Найти его периметр P = 4·a.

a = IO.gets "Введите сторону квадрата a\n"
a = String.trim(a)
a = String.to_integer(a)
p = 4 * a
IO.puts("Периметр равен #{p}")

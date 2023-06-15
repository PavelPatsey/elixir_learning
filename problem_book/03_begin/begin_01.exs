# Begin1. Дана сторона квадрата a. Найти его периметр P = 4·a.

a = IO.gets "Введите сторону квадрата a\n"
a = String.to_integer(String.trim(a))
p = 4 * a
IO.puts("Периметр равен #{p}")

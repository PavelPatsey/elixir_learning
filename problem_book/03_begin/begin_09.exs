# Begin9. Даны два неотрицательных числа a и b. Найти их среднее геометрическое, то есть квадратный корень из их произведения:
# √a·b.

a = String.to_integer(String.trim(IO.gets "Enter a\n"))
b = String.to_integer(String.trim(IO.gets "Enter b\n"))
IO.puts("#{:math.sqrt(a*b)}")

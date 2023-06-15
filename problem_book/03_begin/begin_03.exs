# Begin3. Даны стороны прямоугольника a и b. Найти его площадь S = a·b и
# периметр P = 2·(a + b).

a = String.to_integer(String.trim(IO.gets "Enter a\n"))
b = String.to_integer(String.trim(IO.gets "Enter b\n"))
s = a * b
p = 2 * (a+b)
IO.puts("s = #{s}, p = #{p}")

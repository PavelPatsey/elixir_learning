# Begin4. Дан диаметр окружности d. Найти ее длину L = π·d. В качестве
# значения π использовать 3.14.

d = String.to_integer(String.trim(IO.gets("Enter d\n")))
l = :math.pi() * d
IO.puts("L = #{l}")

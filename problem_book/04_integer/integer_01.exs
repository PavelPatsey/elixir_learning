# Integer1. Дано расстояние L в сантиметрах. Используя операцию деления
# нацело, найти количество полных метров в нем (1 метр = 100 см).

l = IO.gets("Enter L,cm = ")
l = div(String.to_integer(String.trim(l)), 100)
IO.puts("L = #{l}, m")

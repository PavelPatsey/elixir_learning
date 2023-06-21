# Boolean4. Даны два целых числа: A, B. Проверить истинность высказывания:
# «Справедливы неравенства A > 2 и B ≤ 3»

a = String.to_integer(String.trim(IO.gets("Enter number a\n")))
b = String.to_integer(String.trim(IO.gets("Enter number b\n")))
IO.puts("#{a > 2 and b <= 3}")

# If1. Дано целое число. Если оно является положительным, то прибавить к
# нему 1; в противном случае не изменять его. Вывести полученное число.

n =
  "Enter number\n"
  |> IO.gets()
  |> String.trim()
  |> String.to_integer()

n =
  if n > 0 do
    n + 1
  else
    n
  end

IO.puts("n = #{n}")

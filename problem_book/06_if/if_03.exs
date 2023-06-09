# If3. Дано целое число. Если оно является положительным, то прибавить к
# нему 1; если отрицательным, то вычесть из него 2; если нулевым, то
# заменить его на 10. Вывести полученное число.

n =
  "Enter number\n"
  |> IO.gets()
  |> String.trim()
  |> String.to_integer()

n =
  cond do
    n > 0 -> n + 1
    n < 0 -> n - 2
    n == 0 -> 10
    true -> IO.pust("error condition")
  end

IO.puts("n = #{n}")

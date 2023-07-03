# If1. Дано целое число. Если оно является положительным, то прибавить к
# нему 1; в противном случае не изменять его. Вывести полученное число.

# n = IO.gets("Enter number\n")

n =
  "Enter number\n"
  |> IO.gets()
  |> String.trim()
  |> String.to_integer()

IO.puts(n)

# Case1. Дано целое число в диапазоне 1–7. Вывести строку — название дня
# недели, соответствующее данному числу (1 — «понедельник», 2 — «вторник» и т. д.).

x =
  IO.gets("Enter number\n")
  |> String.trim()
  |> String.to_integer()

answer =
  case x do
    1 -> "monday"
    2 -> "Tuesday"
    3 -> "environment"
    4 -> "thursday"
    5 -> "Friday"
    6 -> "saturday"
    _ -> "invalid value"
  end

IO.puts(answer)

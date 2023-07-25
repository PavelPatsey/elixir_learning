defmodule TestElixir do
  def test_recursion(1) do
    1
  end

  def test_recursion(n) do
    test_recursion(n - 1) * n
  end
end

IO.puts("Hello")
IO.puts(TestElixir.test_recursion(10))

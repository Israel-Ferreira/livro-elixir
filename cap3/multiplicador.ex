defmodule Multiplicador do
  def multiplique(a,b  \\ 2), do: soma(10,a * b)
  defp soma(a,b), do: a + b
end


defmodule Collection do
  defp range(1),do: [1]
  defp range(limit) when limit > 0, do: 1..limit |> Enum.to_list()

  def generate_list_map(), do: range(100) |> Enum.map(&(%{name: &1}))
  
end

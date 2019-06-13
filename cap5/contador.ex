defmodule Contador do
  def contar([]), do: 0

  def contar([head | tail]), do: 1 + contar(tail)

  def contar_tuplas({}), do: 0

  def contar_tuplas(tuple) when is_tuple(tuple) do
    [_| tail] = tuple |> Tuple.to_list()
    1 + contar_tuplas(List.to_tuple(tail))
  end

  def contar_maps(maps) do
  end

end

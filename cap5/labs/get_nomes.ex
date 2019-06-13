defmodule GetNomes do
  def get(limit) do
    case File.read("list.txt") do
      {:ok, body } -> read_content(body,limit)
      {:error,reason} -> reason
    end
  end

  defp read_content(body,limit) do
    String.split(body)
    |> Stream.map(fn name -> %{nome: name} end)
    |> Enum.take(limit)
  end
end

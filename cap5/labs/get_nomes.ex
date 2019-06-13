defmodule GetNomes do
  def get() do
    {:ok, body } = File.read("list.txt")
    
    String.split(body)
    |> Stream.map(fn name -> %{nome: name} end)
    |> Enum.take(100)
  end
end

defmodule App.Calculator do

  def multiply(nil,b), do: nil

  def multiply(a,nil), do: nil

  def multiply(a,b), do: a * b
end

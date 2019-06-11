defmodule Math.Multiplicar do
  def multiplicar_por_1(a), do: a * 1

  def  multiplica(a,b),do: a * b

  def multiplica(a,b,c), do: a * b * c

  def multiplica(a,b,c,d), do: a * b * c * d

  def potencia(a), do: a * a

  # Fazendo o calculo de fatorial usando recursão e pattern matching
  def fatorial(0), do: 1
  def fatorial(1), do: 1
  def fatorial(n), do: n * fatorial(n-1)
end

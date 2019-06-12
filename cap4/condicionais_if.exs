defmodule Condicionais.If do
  def greetings(person) do
    if person == "Marilene", do: "Olá, #{person}", else: "Hi, #{person}"
  end

  def checar_maior(x,y) do
    if x > y do
      "#{x} é maior que #{y}"
    else
      "#{y} é maior que #{x}"
    end
  end

  def time_com_mundial(time) do
    if time == "Palmeiras" do
      "ERRO: Palmeiras não tem Mundial"
    else
      "#{time} tem mundial"
    end
  end


end

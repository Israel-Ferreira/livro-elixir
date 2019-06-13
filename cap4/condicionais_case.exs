require Integer

defmodule Condicionais.Case do
  def jogos_e3(jogo) do
    case jogo do
      "Watch Dogs: Legion" -> "Sensacional, Quero Comprar"
      "Cyberpunk 2077" -> "Shut up and take my ALL Money"
      "Elden Ring" -> "Sangue e odio"
      _ -> "Deve ser interessante o jogo #{jogo}"
    end
  end

  def get_response_sobremesa(sobremesa) do
    case sobremesa do
      {:facil,"Brigadeiro"} -> "Isto é verdade"
      {:facil,"Pavê"} -> "Para Felicidade dos tios, é verdade"
      {_,"Arroz Doce"} -> "É uma porcaria"
      {:dificil,"Bolo Gigante de Chocolate"} -> "Ultramente delicioso"
      _ -> "Deve ser interessante e apetitoso"
    end
  end

  def is_sequence(tupla) do
    case tupla do
      {1,x,5} when x > 0 -> "Isso vai casar com um numero maior que 0"
      {1,3,x} when x >= 5 -> "Esse tem que casar com um numero maior  ou igual a 5"
      {2,4,x} when Integer.is_even(x) and x > 4 -> "Este vai casar com numeros pares e que são maiores que 4"
      _ -> "Ficou Alone"
    end
  end
end

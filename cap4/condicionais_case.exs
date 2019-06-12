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
end

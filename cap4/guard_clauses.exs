defmodule GuardClauses do
  def div(a,1), do: a
  def div(a,b) when b > 0, do: a / b



  def todo_list(list) when is_tuple(list)  do
    case list do
      {:assistir_tv,:jogar,_} -> "Quem Assisti TV, hoje assisti netflix"
      {:programar,:jogar,:ouvir_nerdcast} -> "Nerdão"
       {_,:jogar,:ouvir_nerdcast} -> "Tu és nerd"
      _ -> "Não conheco esse hábito"
    end
  end

end

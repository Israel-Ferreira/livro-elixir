defmodule App.Hello do

  #Reference to old brazilian meme
  def say("Marilene"),do: IO.puts "Olá Marilene, hoje tem tainha, vinho e muito s***"

  def say(str), do: IO.puts "Hello #{str}"

  def show_name(name,age), do: IO.puts "Seu nome é #{name} e você tem #{age}"
end

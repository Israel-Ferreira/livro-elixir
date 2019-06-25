defmodule Mix.Tasks.Hello do
  use Mix.Task

  def run([name]) do
    App.Hello.say(name)
  end

end

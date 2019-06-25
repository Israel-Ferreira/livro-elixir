defmodule Mix.Tasks.ShowName do
  use Mix.Task

  def run([name|age]) do
    App.Hello.show_name(name,age)
  end
end

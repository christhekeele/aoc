defmodule Mix.Tasks.Start do
  use Mix.Task

  @impl Mix.Task
  def run(number) do
    day = String.to_integer(number)
  end
end

defmodule AoC.Day.One.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n\n")
    |> Enum.map(&String.split(&1, "\n"))
    |> Enum.map(fn inputs ->
      inputs
      |> Enum.map(&String.to_integer/1)
    end)
  end
end

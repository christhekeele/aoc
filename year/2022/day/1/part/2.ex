defmodule AoC.TwentyTwentyTwo.Day.One.Part.Two do
  def solve(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n\n")
    |> Enum.map(&String.split(&1, "\n"))
    |> Enum.map(fn inputs ->
      inputs
      |> Enum.map(&String.to_integer/1)
      |> Enum.sum
    end)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end
end

defmodule AoC.TwentyTwentyTwo.Day.One.Part.One do
  def solve(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n\n")
    |> Enum.map(&String.split(&1, "\n"))
    |> Enum.map(&Enum.map(&1, fn string -> Integer.parse(string) end))
    |> Enum.map(&Enum.reduce(&1, 0, fn {integer, _}, acc -> acc + integer end))
    |> Enum.max()
  end
end

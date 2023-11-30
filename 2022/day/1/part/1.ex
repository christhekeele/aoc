defmodule AoC.Day.One.Part.One do
  def solve(input) do
    input
    |> Enum.map(&Enum.sum/1)
    |> Enum.max()
  end
end

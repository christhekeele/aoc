defmodule AoC.TwentyTwentyTwo.Day.One.Part.Two do
def solve(input) do
    input
    |> Enum.map(&Enum.sum/1)
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
  end
end

defmodule AoC.TwentyTwentyTwo.Day.Four.Part.Two.Example.Test do
  use ExUnit.Case

  alias AoC.TwentyTwentyTwo.Day.Four.Input
  alias AoC.TwentyTwentyTwo.Day.Four.Part.Two, as: Problem

  test "solves example input correctly" do
    result = "day/4/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 4
  end
end

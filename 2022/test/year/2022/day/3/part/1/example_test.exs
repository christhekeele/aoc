defmodule AoC.TwentyTwentyTwo.Day.Three.Part.One.Example.Test do
  use ExUnit.Case

  alias AoC.TwentyTwentyTwo.Day.Three.Input
  alias AoC.TwentyTwentyTwo.Day.Three.Part.One, as: Problem

  test "solves example input correctly" do
    result = "day/3/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 157
  end
end

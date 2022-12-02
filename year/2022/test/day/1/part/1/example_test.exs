defmodule AoC.TwentyTwentyTwo.Day.One.Part.One.Example.Test do
  use ExUnit.Case

  alias AoC.TwentyTwentyTwo.Day.One.Input
  alias AoC.TwentyTwentyTwo.Day.One.Part.One, as: Problem

  test "solves example input correctly" do
    result = "day/1/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 24000
  end
end

defmodule AoC.Day.Four.Part.One.Example.Test do
  use ExUnit.Case

  alias AoC.Day.Four.Input
  alias AoC.Day.Four.Part.One, as: Problem

  test "solves example input correctly" do
    result = "day/4/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 2
  end
end

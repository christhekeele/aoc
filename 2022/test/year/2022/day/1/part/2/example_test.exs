defmodule AoC.Day.One.Part.Two.Example.Test do
  use ExUnit.Case

  alias AoC.Day.One.Input
  alias AoC.Day.One.Part.Two, as: Problem

  test "solves example input correctly" do
    result = "day/1/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 45000
  end
end

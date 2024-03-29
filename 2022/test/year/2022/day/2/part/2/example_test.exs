defmodule AoC.Day.Two.Part.Two.Example.Test do
  use ExUnit.Case

  alias AoC.Day.Two.Input
  alias AoC.Day.Two.Part.Two, as: Problem

  test "solves example input correctly" do
    result = "day/2/input/example.txt"
    |> Input.parse
    |> Problem.solve

    assert result == 12
  end
end

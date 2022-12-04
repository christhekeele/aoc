defmodule AoC.TwentyTwentyTwo.Day.Four.Part.One do
  def solve(input) do
    input
    |> Enum.filter(fn
      # Left contains right
      {left, right} when
        left.first <= right.first and left.last >= right.last
          -> true
      # Right contains left
      {left, right} when
        left.first >= right.first and left.last <= right.last
          -> true
      # Neither contains the other
      _ -> false
    end)
    |> length
  end
end

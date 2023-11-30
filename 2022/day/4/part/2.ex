defmodule AoC.Day.Four.Part.Two do
  def solve(input) do
    input
    # |> Enum.filter(fn
    #   # Left overlaps right
    #   {left, right} when
    #     left.first <= right.first and left.last >= right.first
    #       -> true
    #   # Right overlaps left
    #   {left, right} when
    #     left.first <= right.last and left.last >= right.first
    #       -> true
    #   # Neither overlaps the other
    #   other -> IO.inspect("No overlap: #{inspect other}"); false
    # end)
    |> Enum.reject(fn {left, right} ->
      Range.disjoint?(left, right)
    end)
    |> length
  end
end

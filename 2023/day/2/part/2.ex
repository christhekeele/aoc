defmodule AoC.Day.Two.Part.Two do
  def solve(input) do
    input
    |> Enum.map(fn {id, pulls} ->
      min_red = pulls |> Enum.map(&Map.fetch!(&1, :red)) |> Enum.max()
      min_green = pulls |> Enum.map(&Map.fetch!(&1, :green)) |> Enum.max()
      min_blue = pulls |> Enum.map(&Map.fetch!(&1, :blue)) |> Enum.max()

      {id, min_red * min_green * min_blue}
    end)
    |> Enum.map(fn {_id, power} -> power end)
    |> Enum.sum()
  end
end

defmodule AoC.Day.Three.Part.Two do
  @gear "*"

  import AoC.Day.Three.Part.One

  def solve({symbols, numbers}) do
    symbols
    |> Enum.filter(fn {_index, symbol} -> symbol == @gear end)
    |> Enum.map(&adjacent_numbers_indices(&1, numbers))
    |> Enum.filter(&(length(&1) == 2))
    |> Enum.reduce(0, fn [gear1, gear2], acc ->
      acc + numbers[gear1] * numbers[gear2]
    end)
  end
end

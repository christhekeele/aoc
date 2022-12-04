defmodule AoC.TwentyTwentyTwo.Day.Three.Part.Two do
  @priorities "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  |> String.codepoints()
  |> Enum.with_index(1)
  |> Enum.into(%{})

  def solve(input) do
    input
    |> Enum.chunk_every(3)
    |> Enum.map(fn rucksacks ->
      Enum.map(rucksacks, &MapSet.new/1)
    end)
    |> Enum.map(&duplicated_item/1)
    |> Enum.map(&item_priority/1)
    |> Enum.sum
  end

  defp duplicated_item(rucksacks) do
    rucksacks
    |> Enum.reduce(&MapSet.intersection/2)
    |> MapSet.to_list()
    |> List.first
  end

  defp item_priority(item) do
    Map.fetch!(@priorities, item)
  end
end

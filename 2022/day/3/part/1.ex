defmodule AoC.Day.Three.Part.One do
  @priorities "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
  |> String.codepoints()
  |> Enum.with_index(1)
  |> Enum.into(%{})

  def solve(input) do
    input
    |> Enum.map(&split_items/1)
    |> Enum.map(&duplicated_item/1)
    |> Enum.map(&item_priority/1)
    |> Enum.sum
  end

  defp split_items(items) do
    {left, right} = Enum.split(items, floor(length(items)/2))
    {MapSet.new(left), MapSet.new(right)}
  end

  defp duplicated_item({items1, items2}) do
    MapSet.intersection(items1, items2)
    |> MapSet.to_list()
    |> List.first
  end

  defp item_priority(item) do
    Map.fetch!(@priorities, item)
  end
end

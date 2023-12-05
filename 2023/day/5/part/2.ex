defmodule AoC.Day.Five.Part.Two do
  import AoC.Day.Five.Part.One

  def solve({seeds, maps}) do
    seeds
    |> seeds_to_seed_ranges()
    |> Enum.map(&Range.to_list/1)
    |> List.flatten()
    |> Enum.map(&lookup_seed_location(&1, maps))
    |> Enum.min()
  end

  def seeds_to_seed_ranges(seeds) do
    seeds
    |> Enum.chunk_every(2)
    |> Enum.map(&Range.new(List.first(&1), List.first(&1) + List.last(&1) - 1, 1))
  end
end

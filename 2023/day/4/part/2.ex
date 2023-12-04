defmodule AoC.Day.Four.Part.Two do
  import AoC.Day.Four.Part.One

  def solve(cards) do
    wins =
      Map.new(cards, fn {id, card} ->
        {id, number_of_wins(card)}
      end)

    copies =
      Map.new(wins, fn {id, wins} ->
        {id, Range.new(id + 1, id + wins, 1) |> Range.to_list()}
      end)

    counts =
      copies
      |> Enum.into([])
      |> Enum.sort_by(fn {id, _copies} -> id end)
      |> Enum.reverse()
      |> Enum.reduce(%{}, fn
        {id, []}, counts ->
          Map.put(counts, id, 1)

        {id, copies}, counts ->
          count =
            copies
            |> Enum.map(&Map.get(counts, &1))
            |> Enum.sum()

          Map.put(counts, id, count + 1)
      end)

    counts |> Map.values() |> Enum.sum()
  end
end

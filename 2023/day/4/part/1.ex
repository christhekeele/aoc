defmodule AoC.Day.Four.Part.One do
  def solve(cards) do
    cards
    |> Enum.map(fn {_id, card} ->
      card
      |> number_of_wins()
      |> score_card()
    end)
    |> Enum.sum()
  end

  def winning_numbers(card) do
    MapSet.intersection(card.winners, card.picks)
  end

  def number_of_wins(card) do
    card
    |> winning_numbers()
    |> MapSet.size()
  end

  def score_card(number_of_wins)

  def score_card(0), do: 0

  def score_card(number_of_wins) when number_of_wins > 0 do
    round(:math.pow(2, number_of_wins - 1))
  end
end

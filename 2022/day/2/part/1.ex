defmodule AoC.TwentyTwentyTwo.Day.Two.Part.One do
  def solve(input) do
    input
    |> Enum.map(&score_round/1)
    |> Enum.sum()
  end

  defp score_round({"A", "X"}), do: 1 + 3
  defp score_round({"A", "Y"}), do: 2 + 6
  defp score_round({"A", "Z"}), do: 3 + 0

  defp score_round({"B", "X"}), do: 1 + 0
  defp score_round({"B", "Y"}), do: 2 + 3
  defp score_round({"B", "Z"}), do: 3 + 6

  defp score_round({"C", "X"}), do: 1 + 6
  defp score_round({"C", "Y"}), do: 2 + 0
  defp score_round({"C", "Z"}), do: 3 + 3

end

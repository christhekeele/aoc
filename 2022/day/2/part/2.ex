defmodule AoC.TwentyTwentyTwo.Day.Two.Part.Two do
  def solve(input) do
    input
    |> Enum.map(&score_round/1)
    |> Enum.sum()
  end

  defp score_round({"A", "X"}), do: 0 + 3
  defp score_round({"A", "Y"}), do: 3 + 1
  defp score_round({"A", "Z"}), do: 6 + 2

  defp score_round({"B", "X"}), do: 0 + 1
  defp score_round({"B", "Y"}), do: 3 + 2
  defp score_round({"B", "Z"}), do: 6 + 3

  defp score_round({"C", "X"}), do: 0 + 2
  defp score_round({"C", "Y"}), do: 3 + 3
  defp score_round({"C", "Z"}), do: 6 + 1

end

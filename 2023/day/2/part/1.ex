defmodule AoC.Day.Two.Part.One do
  @red_limit 12
  @green_limit 13
  @blue_limit 14

  def solve(input) do
    input
    |> Enum.filter(fn {_id, pulls} ->
      Enum.all?(pulls, fn
        %{red: red, green: green, blue: blue}
        when red <= @red_limit and green <= @green_limit and blue <= @blue_limit ->
          true

        _ ->
          false
      end)
    end)
    |> Enum.map(fn {id, _} -> id end)
    |> Enum.sum()
  end
end

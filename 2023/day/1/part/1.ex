defmodule AoC.Day.One.Part.One do
  def solve(input) do
    input
    |> Enum.map(fn string ->
      digits =
        ~r{\d}
        |> Regex.scan(string)
        |> List.flatten()

      {first, last} = {List.first(digits), List.last(digits)}
      (first <> last) |> String.to_integer()
    end)
    |> Enum.sum()
  end
end

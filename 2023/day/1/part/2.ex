defmodule AoC.Day.One.Part.Two do
  def solve(input) do
    input
    |> Enum.map(fn string ->
      digits = parse(string)
      {first, last} = {List.first(digits), List.last(digits)}
      (first <> last) |> String.to_integer()
    end)
    |> Enum.sum()
  end

  def parse(string) do
    string |> do_parse([]) |> :lists.reverse()
  end

  # 0?
  @digits ~w[1 2 3 4 5 6 7 8 9]

  for digit <- @digits do
    defp do_parse(unquote(digit) <> rest, acc) do
      do_parse(rest, [unquote(digit) | acc])
    end
  end

  # zero?
  @word_digit_lookup %{
    "one" => "1",
    "two" => "2",
    "three" => "3",
    "four" => "4",
    "five" => "5",
    "six" => "6",
    "seven" => "7",
    "eight" => "8",
    "nine" => "9"
  }

  for {word, digit} <- @word_digit_lookup do
    defp do_parse(unquote(word) <> rest, acc) do
      do_parse(unquote(String.slice(word, 1..-1)) <> rest, [unquote(digit) | acc])
    end
  end

  # Abort recursion when out of characters
  defp do_parse("", acc), do: acc
  # Otherwise, start scan from next character
  defp do_parse(<<_char::binary-size(1), rest::binary>>, acc), do: do_parse(rest, acc)
end

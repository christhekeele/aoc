defmodule AoC.Day.Four.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.reject(&(&1 == ""))
    |> Enum.map(&parse_card/1)
    |> Map.new()
  end

  def parse_card("Card" <> card) do
    card = String.trim(card)
    {id, rest} = Integer.parse(card)
    <<": ">> <> numbers = rest

    [winners, picks] =
      String.split(numbers, "|", parts: 2)
      |> Enum.map(&String.trim/1)
      |> Enum.map(&parse_numbers/1)

    {id, %{winners: winners, picks: picks}}
  end

  def parse_numbers(numbers) do
    numbers
    |> String.split(~r{\s+})
    |> Enum.map(&String.to_integer/1)
    |> MapSet.new()
  end
end

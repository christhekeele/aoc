defmodule AoC.Day.Two.Input do
  defmodule Pull do
    defstruct red: 0, green: 0, blue: 0
  end

  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.reject(&(&1 == ""))
    |> Enum.map(&parse_game/1)
    |> Map.new()
  end

  def parse_game("Game " <> game) do
    {id, rest} = Integer.parse(game)
    <<": ">> <> pulls = rest

    pulls =
      pulls
      |> String.trim()
      |> String.split(";")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&parse_pull/1)

    {id, pulls}
  end

  def parse_pull(pull) do
    result =
      pull
      |> String.split(",")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&parse_pull_color/1)

    struct!(Pull, result)
  end

  def parse_pull_color(result) do
    case Integer.parse(result) do
      {num, " red"} -> {:red, num}
      {num, " green"} -> {:green, num}
      {num, " blue"} -> {:blue, num}
    end
  end
end

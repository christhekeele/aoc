defmodule AoC.Day.Four.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(fn row ->
      row
      |> String.split(",")
      |> Enum.map(fn range ->
        [left, right | []] = range
        |> String.split("-")
        |> Enum.map(&String.to_integer/1)
        Range.new(left, right)
      end)
      |> List.to_tuple()
    end)
  end
end

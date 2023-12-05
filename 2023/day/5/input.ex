defmodule AoC.Day.Five.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    [[seeds] | maps] =
      input_file
      |> File.read!()
      |> String.split("\n\n")
      |> Enum.reject(&(&1 == ""))
      |> Enum.map(&String.split(&1, "\n"))
      |> Enum.map(fn line -> Enum.reject(line, &(&1 == "")) end)

    <<"seeds: ">> <> seeds = seeds
    seeds = seeds |> String.split(" ") |> Enum.map(&String.to_integer/1)

    maps = Map.new(maps, &parse_map/1)

    {seeds, maps}
  end

  def parse_map([name | mappings]) do
    name =
      name
      |> String.trim_trailing(" map:")
      |> String.replace("-", "_")
      |> String.to_atom()

    mappings = Map.new(mappings, &parse_mapping/1)
    {name, mappings}
  end

  def parse_mapping(mapping) do
    [output, input, length] =
      mapping
      |> String.split(" ", parts: 3)
      |> Enum.map(&String.to_integer/1)

    {Range.new(input, input + length - 1, 1), Range.new(output, output + length - 1, 1)}
  end
end

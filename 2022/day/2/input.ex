defmodule AoC.Day.Two.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.split(&1, " "))
    |> Enum.map(&List.to_tuple/1)
  end
end

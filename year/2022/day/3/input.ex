defmodule AoC.TwentyTwentyTwo.Day.Three.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.map(&String.codepoints/1)
  end
end

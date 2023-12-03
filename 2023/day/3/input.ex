defmodule AoC.Day.Three.Input do
  def parse(input_file \\ System.fetch_env!("INPUT_FILE")) do
    input_file
    |> File.read!()
    |> String.split("\n")
    |> Enum.with_index()
    |> Enum.reduce({%{}, %{}}, fn {row, y}, {symbols, numbers} ->
      symbols = scan_symbols({row, y}, symbols)
      numbers = scan_numbers({row, y}, numbers)

      {symbols, numbers}
    end)
  end

  def scan_symbols({row, y}, symbols) do
    Regex.scan(~r{[^\d\.]}, row, return: :index)
    |> List.flatten()
    |> Enum.reduce(symbols, fn {x, 1}, symbols ->
      Map.put(symbols, {y, x}, String.at(row, x))
    end)
  end

  def scan_numbers({row, y}, numbers) do
    Regex.scan(~r{\d+}, row, return: :index)
    |> List.flatten()
    |> Enum.reduce(numbers, fn {x, length}, numbers ->
      x_start = x
      x_end = x + length - 1

      number =
        row
        |> String.slice(x_start..x_end)
        |> String.to_integer()

      Map.put(numbers, {y, x_start..x_end}, number)
    end)
  end
end

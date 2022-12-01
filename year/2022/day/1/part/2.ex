defmodule AoC.TwentyTwentyTwo.Day.One.Part.Two do
  @moduledoc """
  Documentation for `One`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> One.hello()
      :world

  """
  def solve do
    "INPUT_FILE"
    |> System.fetch_env!()
    |> Path.absname()
    |> File.read!()
    |> String.split("\n\n")
    |> Enum.map(&String.split(&1, "\n"))
    |> Enum.map(&Enum.map(&1, fn string -> Integer.parse(string) end))
    |> Enum.map(&Enum.reduce(&1, 0, fn {integer, _}, acc -> acc + integer end))
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
    |> IO.inspect()
  end
end

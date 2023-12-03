defmodule AoC.Day.Three.Part.One do
  def solve({symbols, numbers}) do
    symbols
    |> Enum.map(&adjacent_numbers_indices(&1, numbers))
    |> List.flatten()
    |> Enum.uniq()
    |> Enum.map(&Map.get(numbers, &1))
    |> Enum.sum()
  end

  def adjacent_numbers_indices({symbol_index, _symbol}, numbers) do
    numbers
    |> Map.keys()
    |> Enum.filter(&adjacent?(symbol_index, &1))
  end

  # The geometry of considers 8 neighbours to be adjacent, cardinals and diagonals
  # We hardcode these in function heads, going clockwise, starting north
  def adjacent?(symbol_index, number_index)

  # North
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y + 1 == n_y and s_x in n_xs..n_xe,
      do: true

  # North-East
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y + 1 == n_y and (s_x + 1) in n_xs..n_xe,
      do: true

  # East
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y == n_y and (s_x + 1) in n_xs..n_xe,
      do: true

  # South-East
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y - 1 == n_y and (s_x + 1) in n_xs..n_xe,
      do: true

  # South
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y - 1 == n_y and s_x in n_xs..n_xe,
      do: true

  # South-West
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y - 1 == n_y and (s_x - 1) in n_xs..n_xe,
      do: true

  # West
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y == n_y and (s_x - 1) in n_xs..n_xe,
      do: true

  # North-West
  def adjacent?({s_y, s_x}, {n_y, n_xs..n_xe})
      when s_y + 1 == n_y and (s_x - 1) in n_xs..n_xe,
      do: true

  def adjacent?(_symbol_index, _number_index), do: false
end

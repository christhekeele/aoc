defmodule AoC.Day.Five.Part.One do
  def solve({seeds, maps}) do
    seeds
    |> Enum.map(&lookup_seed_location(&1, maps))
    |> Enum.min()
  end

  def lookup_seed_location(seed, maps) do
    [
      :seed_to_soil,
      :soil_to_fertilizer,
      :fertilizer_to_water,
      :water_to_light,
      :light_to_temperature,
      :temperature_to_humidity,
      :humidity_to_location
    ]
    |> Enum.reduce(seed, &perform_mapping(&2, &1, maps))
  end

  def perform_mapping(input, type, maps) do
    {input, type, maps}

    Enum.find_value(maps[type], input, fn {
                                            input_range = input_start.._,
                                            output_start.._
                                          } ->
      if input in input_range do
        offset = input - input_start
        output_start + offset
      end
    end)
  end
end

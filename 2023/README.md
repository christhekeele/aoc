# Advent of Code 2023

## Usage

```sh
env INPUT_FILE=day/5/input/example.txt \
  mix eval """
  AoC.Day.Five.Input.parse
  # |> AoC.Day.Five.Part.One.solve
  |> AoC.Day.Five.Part.Two.solve
  |> IO.inspect
  """
```

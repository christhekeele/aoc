# Advent of Code 2023

## Usage

```sh
env INPUT_FILE=day/2/input/full.txt \
  mix eval """
  AoC.Day.Two.Input.parse
  |> AoC.Day.Two.Part.One.solve
  |> IO.inspect
  """
```

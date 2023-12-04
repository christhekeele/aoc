# Advent of Code 2023

## Usage

```sh
env INPUT_FILE=day/4/input/example.txt \
  mix eval """
  AoC.Day.Four.Input.parse
  # |> AoC.Day.Four.Part.One.solve
  |> AoC.Day.Four.Part.Two.solve
  |> IO.inspect
  """
```

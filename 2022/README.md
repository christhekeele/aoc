# Advent of Code 2022

## Usage

```sh
env INPUT_FILE=day/2/input/full.txt \
  mix eval """
  AoC.Day.Two.Input.parse
  |> AoC.Day.Two.Part.Two.solve
  |> IO.inspect
  """
```

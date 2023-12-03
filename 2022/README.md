# Advent of Code 2023

## Usage

```sh
env INPUT_FILE=day/3/input/full.txt \
  mix eval """
  AoC.Day.Three.Input.parse
  |> AoC.Day.Three.Part.Two.solve
  |> IO.inspect
  """
```

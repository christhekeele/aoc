# Advent of Code 2023

## Usage

```sh
env INPUT_FILE=day/1/input/part/2/example.txt \
  mix eval """
  AoC.Day.One.Input.parse
  |> AoC.Day.One.Part.Two.solve
  |> IO.inspect
  """
```

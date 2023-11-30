# Advent of Code 2022

## Usage

```sh
env INPUT_FILE=day/2/input/full.txt \
  mix eval """
  AoC.TwentyTwentyTwo.Day.Two.Input.parse
  |> AoC.TwentyTwentyTwo.Day.Two.Part.One.solve
  |> IO.inspect
  """
```

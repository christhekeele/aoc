defmodule AoC.MixProject do
  use Mix.Project

  def project,
    do: [
      app: :aoc,
      elixirc_paths: ["day", "lib", "tasks"],
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]

  def application,
    do: [
      extra_applications: [:logger]
    ]

  defp deps, do: []

  defp aliases, do: []
end

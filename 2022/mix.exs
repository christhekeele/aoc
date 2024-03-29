defmodule AoC.MixProject do
  use Mix.Project

  def project do
    [
      app: :"2022",
      elixirc_paths: ["day"],
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end

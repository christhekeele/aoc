defmodule AoC.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "day",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      apps:
        File.ls!("day")
        |> Enum.filter(&File.dir?(Path.join("day", &1)))
        |> Enum.map(&String.to_atom/1),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
      # mod: {One.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end

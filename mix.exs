defmodule Fugue.Mixfile do
  use Mix.Project

  def project do
    [app: :fugue,
     description: "Extendable testing utilities for Plug",
     version: "0.1.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     package: package]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{ :plug, "~> 1.0", optional: true }]
  end

  defp package do
    [files: ["lib", "mix.exs", "README*"],
     maintainers: ["Cameron Bytheway"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/camshaft/fugue"}]
  end
end

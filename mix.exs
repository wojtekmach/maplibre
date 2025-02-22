defmodule MapLibre.MixProject do
  use Mix.Project

  @version "0.1.0"
  @description "Elixir bindings to MapLibre Style Specification"

  def project do
    [
      app: :maplibre,
      version: @version,
      description: @description,
      name: "MapLibre",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.3"},
      {:req, "~> 0.3.0"},
      {:table, "~> 0.1.0"},
      {:geo, "~> 3.4"},
      {:ex_doc, "~> 0.28", only: :dev, runtime: false}
    ]
  end

  defp docs do
    [
      main: "MapLibre",
      source_url: "https://github.com/livebook-dev/maplibre",
      source_ref: "v#{@version}"
    ]
  end

  def package do
    [
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/livebook-dev/maplibre"
      }
    ]
  end
end

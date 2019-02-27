defmodule Stompex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :stompex,
      version: "0.2.0",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:connection, "~> 1.0"},
      {:credo, "~> 1.0",
        only: [:dev, :test],
        runtime: false}
    ]
  end
end

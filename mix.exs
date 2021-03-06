defmodule Mediax.MixProject do
  use Mix.Project
  alias Mediax.Application, as: MediaxApplication

  def project do
    [
      app: :mediax,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger
      ],
      mod: {MediaxApplication, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 0.8", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:telemetry, "~> 0.4"},
      {:plug_cowboy, "~> 2.0"},
    ]
  end
end

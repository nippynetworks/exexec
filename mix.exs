defmodule Exexec.MixProject do
  use Mix.Project

  @version "0.2.0"

  def project do
    [
      app: :exexec,
      version: @version,
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      source_url: "https://github.com/ericentin/exexec",
      docs: [
        main: "Exexec",
        extras: ["README.md"],
        source_ref: "v#{@version}"
      ],
      deps: deps(),
      description: description(),
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
      {:erlexec, "~> 1.10 or ~> 2.0"},
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end

  defp description do
    "An idiomatic Elixir wrapper for erlexec."
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/ericentin/exexec"
      }
    ]
  end
end

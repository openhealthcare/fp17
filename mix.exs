defmodule Fp17.Mixfile do
  use Mix.Project

  def project do
    [
      app: :FP17,
      version: "0.0.1",
      elixir: "~> 1.0",
      deps: deps,
      elixirc_paths: ["lib", "web"],
      external_actions: external_actions(Mix.env)
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      mod: { FP17, [] },
      applications: [:phoenix, :cowboy, :logger]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:phoenix, "0.4.1"},
      {:cowboy, "~> 1.0.0"},
      {:mailgun, "~> 0.0.1"},
      {:httpoison, "~> 0.4"}
    ]
  end

  defp external_actions(:test), do: false
  defp external_actions(_), do: true

end

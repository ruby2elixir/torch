defmodule Torch.Mixfile do
  use Mix.Project

  def project do
    [app: :torch,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.3",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name: "Torch",
     description: "Rapid admin generator for Phoenix",
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :phoenix]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # To depend on another app inside the umbrella:
  #
  #   {:myapp, in_umbrella: true}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:filtrex, github: "danielberkompas/filtrex",
      ref: "8d6dfe4f24c72c9cbebc15734de30d1722849be5"},
     {:phoenix, "~> 1.2.0"}]
  end

  defp package do
    [
      maintainers: ["Daniel Berkompas"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/infinitered/torch"
      }
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(_),     do: ["lib", "web"]
end
defmodule Monitor.Mixfile do
  use Mix.Project

  def project do
    [app: :monitor,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Monitor, []},
     applications: [:phoenix, :cowboy, :logger, :postgrex, :ecto]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, github: "phoenixframework/phoenix", tag: "v0.7.2", override: true},
     {:cowboy, "~> 1.0"},
     {:postgrex, ">= 0.0.0"},
     {:ecto, "~> 0.2.0"},
     {:jazz, github: "meh/jazz"},
     {:phoenix_haml, github: "chrismccord/phoenix_haml"}]
  end
end

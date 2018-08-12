defmodule Machinery.Mixfile do
  use Mix.Project

  def project do
    [
      app: :machinery,
      version: "0.16.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      compilers: [:phoenix] ++ Mix.compilers,
      description: description(),
      package: package(),
      source_url: "https://github.com/joaomdmoura/machinery",
      docs: [
        main: "Machinery",
        logo: "logo.png",
        extras: ["README.md"]
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [mod: {Machinery, []},
     env: [{Machinery.Endpoint, []}],
     applications: [:phoenix, :phoenix_html, :cowboy]]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, github: "phoenixframework/phoenix"},
      {:phoenix_html, "~> 2.11"},
      {:cowboy, "~> 1.0"},
      {:excoveralls, "~> 0.7", only: :test},
      {:ecto, "~> 2.1"},
      {:ex_doc, "~> 0.18", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Machinery is a State Machine library for structs in general.
    It supports guard clauses, callbacks and integrate out of the box
    with Phoenix apps."
  end

  defp package() do
    [
      maintainers: ["João M. D. Moura"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/joaomdmoura/machinery"}
    ]
  end
end

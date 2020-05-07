defmodule Kaffy.MixProject do
  use Mix.Project

  def project do
    [
      app: :kaffy,
      version: "0.1.0",
      elixir: "~> 1.7",
      compilers: [:phoenix] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Kaffy",
      source_url: "https://github.com/aesmail/kaffy",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.5"},
      {:phoenix_html, "~> 2.11"},
      {:jason, "~> 1.0"},
      {:ecto_sql, "~> 3.4"}
    ]
  end

  defp description() do
    "Extremely simple yet powerful admin interface for phoenix applications"
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/aesmail/kaffy"}
    ]
  end
end

defmodule Book.MixProject do
  use Mix.Project

  def project do
    [
      app: :book,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Book.Application, []}
    ]
  end

  defp description() do
    "A double entry accounting system using Ecto"
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/shankardevy/book"}
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:credo, "~> 1.4.0", only: :dev},
      {:ex_doc, "~> 0.22.2", only: :dev},
      {:inch_ex, "~> 2.0", only: :dev}
    ]
  end
end

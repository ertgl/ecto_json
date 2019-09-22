defmodule Ecto.JSON.MixProject do

  @github_url "https://github.com/ertgl/ecto_json"

  @version "0.1.0"

  use Mix.Project

  def project do
    [
      name: 'Ecto.JSON',
      description: __MODULE__.description(),
      source_url: @github_url,
      app: :ecto_json,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: __MODULE__.package(),
    ]
  end

  def description do
    """
    Ecto.JSON makes Ecto able to use any type of data
    (Integer, String, List, Map, etc.) which is valid JSON, not only key-value maps.
    """
  end

  def package do
    [
			name: :ecto_json,
			files: [
				"lib",
				"mix.exs",
				"README.md",
				"LICENSE.txt",
			],
			maintainers: [
				"Ertugrul Keremoglu <ertugkeremoglu@gmail.com>",
			],
			licenses: [
				"MIT",
			],
			links: %{
				"GitHub" => @github_url,
			},
		]
  end

  def docs do
		[
			name: "Ecto.JSON",
      source_url: @github_url,
			source_ref: "v#{@version}",
			main: "Ecto.JSON",
      extras: [
        "LICENSE.txt",
        "README.md",
      ],
		]
	end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :logger,
      ]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.2.1", only: [:dev, :test] },
      {:ex_doc, "~> 0.21.2", only: :dev, runtime: false},
    ]
  end

end

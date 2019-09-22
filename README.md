**`Ecto.JSON`** makes `Ecto` able to use any type of data (Integer, String, List, Map, etc.) which is valid JSON, not only key-value maps.

[![Hex Version](https://img.shields.io/hexpm/v/ecto_json.svg?style=flat-square)](https://hex.pm/packages/ecto_json)
[![Docs](https://img.shields.io/badge/api-docs-orange.svg?style=flat-square)](https://hexdocs.pm/ecto_json)
[![Hex downloads](https://img.shields.io/hexpm/dt/ecto_json.svg?style=flat-square)](https://hex.pm/packages/ecto_json)
[![GitHub](https://img.shields.io/badge/vcs-GitHub-blue.svg?style=flat-square)](https://github.com/ertgl/ecto_json)
[![MIT License](https://img.shields.io/hexpm/l/ecto_json.svg?style=flat-square)](LICENSE.txt)


**`Installation`**


The package is [available in Hex](https://hex.pm/packages/ecto_json), it can be installed
by adding `:ecto_json` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ecto_json, "~> 0.1.0"},
  ]
end
```


**`Usage`**


The package is [available in Hex](https://hex.pm/packages/ecto_json), it can be installed
by adding `:ecto_json` to your list of dependencies in `mix.exs`:

```elixir
defmodule Property do

  use Ecto.Schema

  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "properties" do
    field :key, :string
    field :value, Ecto.JSON

    timestamps([
      type: :utc_datetime,
    ])
  end

  def changeset(property, attrs) do
    property
    |> cast(attrs, [:key, :value])
    |> validate_required([:key, :value])
  end

end
```

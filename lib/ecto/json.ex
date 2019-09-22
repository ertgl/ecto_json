defmodule Ecto.JSON do
  @moduledoc File.read!("README.md")

  use Ecto.Type

  def type do
    :json
  end

  def cast(data) do
    {:ok, data}
  end

  def load(data) do
    {:ok, data}
  end

  def dump(data) do
    {:ok, data}
  end

end

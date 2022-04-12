defmodule ElixirLangTokyo.Community.Alchemist do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "alchemists" do
    field :github, :string
    field :name, :string
    field :twitter, :string

    has_many :talks, ElixirLangTokyo.Community.Talk

    timestamps()
  end

  @doc false
  def changeset(alchemist, attrs) do
    alchemist
    |> cast(attrs, [:name, :github, :twitter])
    |> validate_required([:name, :github, :twitter])
  end
end

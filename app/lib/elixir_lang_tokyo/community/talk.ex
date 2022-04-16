defmodule ElixirLangTokyo.Community.Talk do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "talks" do
    belongs_to :alchemist, ElixirLangTokyo.Alchemist
    belongs_to :event, ElixirLangTokyo.Community.Event
    field :slide, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(talk, attrs) do
    talk
    |> cast(attrs, [:title, :slide])
    |> validate_required([:title, :slide])
  end
end

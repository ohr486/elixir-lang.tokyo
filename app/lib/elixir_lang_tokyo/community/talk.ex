defmodule ElixirLangTokyo.Community.Talk do
  use Ecto.Schema
  import Ecto.Changeset

  schema "talks" do
    field :alchemist_id, :integer
    field :event_id, :integer
    field :slide, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(talk, attrs) do
    talk
    |> cast(attrs, [:event_id, :alchemist_id, :title, :slide])
    |> validate_required([:event_id, :alchemist_id, :title, :slide])
  end
end

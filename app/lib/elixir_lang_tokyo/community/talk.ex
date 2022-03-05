defmodule ElixirLangTokyo.Community.Talk do
  use Ecto.Schema
  import Ecto.Changeset

  schema "talks" do
    field :alchemist_id, :integer
    belongs_to :event, ElixirLangTokyo.Community.Event
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

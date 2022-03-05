defmodule ElixirLangTokyo.Community.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :meetup_id, :integer
    field :name, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:meetup_id, :name, :url])
    |> validate_required([:meetup_id, :name, :url])
  end
end

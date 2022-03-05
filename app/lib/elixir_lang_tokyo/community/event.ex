defmodule ElixirLangTokyo.Community.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    belongs_to :meetup, ElixirLangTokyo.Community.Meetup
    field :name, :string
    field :url, :string

    has_many :talks, ElixirLangTokyo.Community.Talk

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:meetup_id, :name, :url])
    |> validate_required([:meetup_id, :name, :url])
  end
end

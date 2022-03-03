defmodule ElixirLangTokyo.Community.Meetup do
  use Ecto.Schema
  import Ecto.Changeset

  schema "meetups" do
    field :hashtag, :string
    field :name, :string
    field :site, :string

    timestamps()
  end

  @doc false
  def changeset(meetup, attrs) do
    meetup
    |> cast(attrs, [:name, :site, :hashtag])
    |> validate_required([:name, :site, :hashtag])
  end
end

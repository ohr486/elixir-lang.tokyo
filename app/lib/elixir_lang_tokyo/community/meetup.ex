defmodule ElixirLangTokyo.Community.Meetup do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "meetups" do
    field :hashtag, :string
    field :name, :string
    field :site, :string

    has_many :events, ElixirLangTokyo.Community.Event
    has_many :meetup_owners, ElixirLangTokyo.Community.MeetupOwner

    timestamps()
  end

  @doc false
  def changeset(meetup, attrs) do
    meetup
    |> cast(attrs, [:name, :site, :hashtag])
    |> validate_required([:name, :site, :hashtag])
  end
end

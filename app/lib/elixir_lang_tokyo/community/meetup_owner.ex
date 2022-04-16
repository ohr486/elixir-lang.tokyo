defmodule ElixirLangTokyo.Community.MeetupOwner do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "community_meetup_owners" do
    belongs_to :alchemist, ElixirLangTokyo.Alchemist
    belongs_to :meetup, ElixirLangTokyo.Community.Meetup

    timestamps()
  end

  @doc false
  def changeset(meetup_owner, attrs) do
    meetup_owner
    |> cast(attrs, [:meetup_id, :alchemist_id])
    |> validate_required([:meetup_id, :alchemist_id])
  end
end

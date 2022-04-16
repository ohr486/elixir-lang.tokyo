defmodule ElixirLangTokyo.Repo.Migrations.CreateCommunityMeetupOwners do
  use Ecto.Migration

  def change do
    create table(:community_meetup_owners) do
      add :meetup_id, :integer
      add :alchemist_id, :integer

      timestamps()
    end
  end
end

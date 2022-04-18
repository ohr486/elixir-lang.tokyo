defmodule ElixirLangTokyo.Repo.Migrations.CreateMeetupOwners do
  use Ecto.Migration

  def change do
    create table(:meetup_owners) do
      add :meetup_id, references(:meetups, on_delete: :nothing)
      add :alchemist_id, references(:alchemists, on_delete: :nothing)

      timestamps()
    end

    create index(:meetup_owners, [:meetup_id, :alchemist_id])
  end
end

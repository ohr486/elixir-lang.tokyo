defmodule ElixirLangTokyo.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :meetup_id, references(:meetups, on_delete: :nothing)
      add :name, :string
      add :url, :string

      timestamps()
    end

    create index(:events, [:meetup_id])
  end
end

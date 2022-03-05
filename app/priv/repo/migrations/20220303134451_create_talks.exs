defmodule ElixirLangTokyo.Repo.Migrations.CreateTalks do
  use Ecto.Migration

  def change do
    create table(:talks) do
      add :event_id, references(:events, on_delete: :nothing)
      add :alchemist_id, :integer
      add :title, :string
      add :slide, :string

      timestamps()
    end

    create index(:talks, [:event_id])
  end
end
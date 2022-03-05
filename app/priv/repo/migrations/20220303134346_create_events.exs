defmodule ElixirLangTokyo.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :meetup_id, :integer
      add :name, :string
      add :url, :string

      timestamps()
    end
  end
end

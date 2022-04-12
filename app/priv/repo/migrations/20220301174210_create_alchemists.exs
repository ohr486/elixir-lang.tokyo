defmodule ElixirLangTokyo.Repo.Migrations.CreateAlchemists do
  use Ecto.Migration

  def change do
    create table(:alchemists) do
      add :name, :string
      add :github, :string
      add :twitter, :string

      timestamps()
    end
  end
end

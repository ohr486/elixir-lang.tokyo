defmodule ElixirLangTokyo.Repo.Migrations.CreateMeetups do
  use Ecto.Migration

  def change do
    create table(:meetups) do
      add :name, :string
      add :site, :string
      add :hashtag, :string

      timestamps()
    end
  end
end

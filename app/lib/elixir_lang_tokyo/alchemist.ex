defmodule ElixirLangTokyo.Alchemist do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  schema "alchemists" do
    field :github, :string
    field :name, :string
    field :twitter, :string

    has_many :talks, ElixirLangTokyo.Community.Talk
    has_many :meetup_owners, ElixirLangTokyo.Community.MeetupOwner

    timestamps()
  end

  @doc false
  def changeset(alchemist, attrs) do
    alchemist
    |> cast(attrs, [:name, :github, :twitter])
    |> validate_required([:name, :github, :twitter])
  end

  import Ecto.Query, warn: false
  alias ElixirLangTokyo.Repo
  alias ElixirLangTokyo.Alchemist

  @doc """
  Returns the list of alchemists.

  ## Examples

      iex> list_alchemists()
      [%Alchemist{}, ...]

  """
  def list_alchemists do
    Repo.all(Alchemist)
  end

  @doc """
  Gets a single alchemist.

  Raises `Ecto.NoResultsError` if the Alchemist does not exist.

  ## Examples

      iex> get_alchemist!(123)
      %Alchemist{}

      iex> get_alchemist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_alchemist!(id), do: Repo.get!(Alchemist, id)

  @doc """
  Creates a alchemist.

  ## Examples

      iex> create_alchemist(%{field: value})
      {:ok, %Alchemist{}}

      iex> create_alchemist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_alchemist(attrs \\ %{}) do
    %Alchemist{}
    |> Alchemist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a alchemist.

  ## Examples

      iex> update_alchemist(alchemist, %{field: new_value})
      {:ok, %Alchemist{}}

      iex> update_alchemist(alchemist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_alchemist(%Alchemist{} = alchemist, attrs) do
    alchemist
    |> Alchemist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a alchemist.

  ## Examples

      iex> delete_alchemist(alchemist)
      {:ok, %Alchemist{}}

      iex> delete_alchemist(alchemist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_alchemist(%Alchemist{} = alchemist) do
    Repo.delete(alchemist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking alchemist changes.

  ## Examples

      iex> change_alchemist(alchemist)
      %Ecto.Changeset{data: %Alchemist{}}

  """
  def change_alchemist(%Alchemist{} = alchemist, attrs \\ %{}) do
    Alchemist.changeset(alchemist, attrs)
  end
end

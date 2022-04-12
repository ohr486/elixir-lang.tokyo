defmodule ElixirLangTokyo.Community do
  @moduledoc """
  The Community context.
  """

  import Ecto.Query, warn: false
  alias ElixirLangTokyo.Repo

  alias ElixirLangTokyo.Community.Meetup

  @doc """
  Returns the list of meetups.

  ## Examples

      iex> list_meetups()
      [%Meetup{}, ...]

  """
  def list_meetups do
    Repo.all(Meetup)
  end

  @doc """
  Gets a single meetup.

  Raises `Ecto.NoResultsError` if the Meetup does not exist.

  ## Examples

      iex> get_meetup!(123)
      %Meetup{}

      iex> get_meetup!(456)
      ** (Ecto.NoResultsError)

  """
  def get_meetup!(id), do: Repo.get!(Meetup, id)

  @doc """
  Creates a meetup.

  ## Examples

      iex> create_meetup(%{field: value})
      {:ok, %Meetup{}}

      iex> create_meetup(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_meetup(attrs \\ %{}) do
    %Meetup{}
    |> Meetup.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a meetup.

  ## Examples

      iex> update_meetup(meetup, %{field: new_value})
      {:ok, %Meetup{}}

      iex> update_meetup(meetup, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_meetup(%Meetup{} = meetup, attrs) do
    meetup
    |> Meetup.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a meetup.

  ## Examples

      iex> delete_meetup(meetup)
      {:ok, %Meetup{}}

      iex> delete_meetup(meetup)
      {:error, %Ecto.Changeset{}}

  """
  def delete_meetup(%Meetup{} = meetup) do
    Repo.delete(meetup)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking meetup changes.

  ## Examples

      iex> change_meetup(meetup)
      %Ecto.Changeset{data: %Meetup{}}

  """
  def change_meetup(%Meetup{} = meetup, attrs \\ %{}) do
    Meetup.changeset(meetup, attrs)
  end

  alias ElixirLangTokyo.Community.Event

  @doc """
  Returns the list of events.

  ## Examples

      iex> list_events()
      [%Event{}, ...]

  """
  def list_events do
    Repo.all(Event)
  end

  @doc """
  Gets a single event.

  Raises `Ecto.NoResultsError` if the Event does not exist.

  ## Examples

      iex> get_event!(123)
      %Event{}

      iex> get_event!(456)
      ** (Ecto.NoResultsError)

  """
  def get_event!(id), do: Repo.get!(Event, id)

  @doc """
  Creates a event.

  ## Examples

      iex> create_event(%{field: value})
      {:ok, %Event{}}

      iex> create_event(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_event(attrs \\ %{}) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a event.

  ## Examples

      iex> update_event(event, %{field: new_value})
      {:ok, %Event{}}

      iex> update_event(event, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_event(%Event{} = event, attrs) do
    event
    |> Event.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a event.

  ## Examples

      iex> delete_event(event)
      {:ok, %Event{}}

      iex> delete_event(event)
      {:error, %Ecto.Changeset{}}

  """
  def delete_event(%Event{} = event) do
    Repo.delete(event)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking event changes.

  ## Examples

      iex> change_event(event)
      %Ecto.Changeset{data: %Event{}}

  """
  def change_event(%Event{} = event, attrs \\ %{}) do
    Event.changeset(event, attrs)
  end

  alias ElixirLangTokyo.Community.Talk

  @doc """
  Returns the list of talks.

  ## Examples

      iex> list_talks()
      [%Talk{}, ...]

  """
  def list_talks do
    Repo.all(Talk)
  end

  @doc """
  Gets a single talk.

  Raises `Ecto.NoResultsError` if the Talk does not exist.

  ## Examples

      iex> get_talk!(123)
      %Talk{}

      iex> get_talk!(456)
      ** (Ecto.NoResultsError)

  """
  def get_talk!(id), do: Repo.get!(Talk, id)

  @doc """
  Creates a talk.

  ## Examples

      iex> create_talk(%{field: value})
      {:ok, %Talk{}}

      iex> create_talk(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_talk(attrs \\ %{}) do
    %Talk{}
    |> Talk.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a talk.

  ## Examples

      iex> update_talk(talk, %{field: new_value})
      {:ok, %Talk{}}

      iex> update_talk(talk, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_talk(%Talk{} = talk, attrs) do
    talk
    |> Talk.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a talk.

  ## Examples

      iex> delete_talk(talk)
      {:ok, %Talk{}}

      iex> delete_talk(talk)
      {:error, %Ecto.Changeset{}}

  """
  def delete_talk(%Talk{} = talk) do
    Repo.delete(talk)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking talk changes.

  ## Examples

      iex> change_talk(talk)
      %Ecto.Changeset{data: %Talk{}}

  """
  def change_talk(%Talk{} = talk, attrs \\ %{}) do
    Talk.changeset(talk, attrs)
  end

  alias ElixirLangTokyo.Community.Alchemist

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

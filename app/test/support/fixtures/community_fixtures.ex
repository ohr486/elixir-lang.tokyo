defmodule ElixirLangTokyo.CommunityFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirLangTokyo.Community` context.
  """

  @doc """
  Generate a meetup.
  """
  def meetup_fixture(attrs \\ %{}) do
    {:ok, meetup} =
      attrs
      |> Enum.into(%{
        hashtag: "some hashtag",
        name: "some name",
        site: "some site"
      })
      |> ElixirLangTokyo.Community.create_meetup()

    meetup
  end

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        name: "some name",
        url: "some url"
      })
      |> ElixirLangTokyo.Community.create_event()

    event
  end

  @doc """
  Generate a talk.
  """
  def talk_fixture(attrs \\ %{}) do
    {:ok, talk} =
      attrs
      |> Enum.into(%{
        alchemist_id: 42,
        slide: "some slide",
        title: "some title"
      })
      |> ElixirLangTokyo.Community.create_talk()

    talk
  end
end

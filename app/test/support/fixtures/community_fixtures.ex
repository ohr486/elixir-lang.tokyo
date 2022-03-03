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
end

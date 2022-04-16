defmodule ElixirLangTokyo.AlchemistFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirLangTokyo.Alchemist` schema.
  """

  @doc """
  Generate a alchemist.
  """
  def alchemist_fixture(attrs \\ %{}) do
    {:ok, alchemist} =
      attrs
      |> Enum.into(%{
        github: "some github",
        name: "some name",
        twitter: "some twitter"
      })
      |> ElixirLangTokyo.Alchemist.create_alchemist()

    alchemist
  end
end

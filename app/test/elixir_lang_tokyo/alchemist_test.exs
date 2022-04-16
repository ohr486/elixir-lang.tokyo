defmodule ElixirLangTokyo.AlchemistTest do
  use ElixirLangTokyo.DataCase

  describe "alchemists" do
    alias ElixirLangTokyo.Alchemist

    import ElixirLangTokyo.AlchemistFixtures

    @invalid_attrs %{github: nil, name: nil, twitter: nil}

    test "list_alchemists/0 returns all alchemists" do
      alchemist = alchemist_fixture()
      assert Alchemist.list_alchemists() == [alchemist]
    end

    test "get_alchemist!/1 returns the alchemist with given id" do
      alchemist = alchemist_fixture()
      assert Alchemist.get_alchemist!(alchemist.id) == alchemist
    end

    test "create_alchemist/1 with valid data creates a alchemist" do
      valid_attrs = %{github: "some github", name: "some name", twitter: "some twitter"}

      assert {:ok, %Alchemist{} = alchemist} = Alchemist.create_alchemist(valid_attrs)
      assert alchemist.github == "some github"
      assert alchemist.name == "some name"
      assert alchemist.twitter == "some twitter"
    end

    test "create_alchemist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Alchemist.create_alchemist(@invalid_attrs)
    end

    test "update_alchemist/2 with valid data updates the alchemist" do
      alchemist = alchemist_fixture()
      update_attrs = %{github: "some updated github", name: "some updated name", twitter: "some updated twitter"}

      assert {:ok, %Alchemist{} = alchemist} = Alchemist.update_alchemist(alchemist, update_attrs)
      assert alchemist.github == "some updated github"
      assert alchemist.name == "some updated name"
      assert alchemist.twitter == "some updated twitter"
    end

    test "update_alchemist/2 with invalid data returns error changeset" do
      alchemist = alchemist_fixture()
      assert {:error, %Ecto.Changeset{}} = Alchemist.update_alchemist(alchemist, @invalid_attrs)
      assert alchemist == Alchemist.get_alchemist!(alchemist.id)
    end

    test "delete_alchemist/1 deletes the alchemist" do
      alchemist = alchemist_fixture()
      assert {:ok, %Alchemist{}} = Alchemist.delete_alchemist(alchemist)
      assert_raise Ecto.NoResultsError, fn -> Alchemist.get_alchemist!(alchemist.id) end
    end

    test "change_alchemist/1 returns a alchemist changeset" do
      alchemist = alchemist_fixture()
      assert %Ecto.Changeset{} = Alchemist.change_alchemist(alchemist)
    end
  end
end

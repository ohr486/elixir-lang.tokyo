defmodule ElixirLangTokyo.CommunityTest do
  use ElixirLangTokyo.DataCase

  alias ElixirLangTokyo.Community

  describe "meetups" do
    alias ElixirLangTokyo.Community.Meetup

    import ElixirLangTokyo.CommunityFixtures

    @invalid_attrs %{hashtag: nil, name: nil, site: nil}

    test "list_meetups/0 returns all meetups" do
      meetup = meetup_fixture()
      assert Community.list_meetups() == [meetup]
    end

    test "get_meetup!/1 returns the meetup with given id" do
      meetup = meetup_fixture()
      assert Community.get_meetup!(meetup.id) == meetup
    end

    test "create_meetup/1 with valid data creates a meetup" do
      valid_attrs = %{hashtag: "some hashtag", name: "some name", site: "some site"}

      assert {:ok, %Meetup{} = meetup} = Community.create_meetup(valid_attrs)
      assert meetup.hashtag == "some hashtag"
      assert meetup.name == "some name"
      assert meetup.site == "some site"
    end

    test "create_meetup/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Community.create_meetup(@invalid_attrs)
    end

    test "update_meetup/2 with valid data updates the meetup" do
      meetup = meetup_fixture()
      update_attrs = %{hashtag: "some updated hashtag", name: "some updated name", site: "some updated site"}

      assert {:ok, %Meetup{} = meetup} = Community.update_meetup(meetup, update_attrs)
      assert meetup.hashtag == "some updated hashtag"
      assert meetup.name == "some updated name"
      assert meetup.site == "some updated site"
    end

    test "update_meetup/2 with invalid data returns error changeset" do
      meetup = meetup_fixture()
      assert {:error, %Ecto.Changeset{}} = Community.update_meetup(meetup, @invalid_attrs)
      assert meetup == Community.get_meetup!(meetup.id)
    end

    test "delete_meetup/1 deletes the meetup" do
      meetup = meetup_fixture()
      assert {:ok, %Meetup{}} = Community.delete_meetup(meetup)
      assert_raise Ecto.NoResultsError, fn -> Community.get_meetup!(meetup.id) end
    end

    test "change_meetup/1 returns a meetup changeset" do
      meetup = meetup_fixture()
      assert %Ecto.Changeset{} = Community.change_meetup(meetup)
    end
  end
end

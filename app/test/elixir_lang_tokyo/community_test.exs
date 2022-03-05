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

  describe "events" do
    alias ElixirLangTokyo.Community.Event

    import ElixirLangTokyo.CommunityFixtures

    @invalid_attrs %{name: nil, url: nil}

    test "list_events/0 returns all events" do
      event = event_fixture()
      assert Community.list_events() == [event]
    end

    test "get_event!/1 returns the event with given id" do
      event = event_fixture()
      assert Community.get_event!(event.id) == event
    end

    test "create_event/1 with valid data creates a event" do
      valid_attrs = %{name: "some name", url: "some url"}

      assert {:ok, %Event{} = event} = Community.create_event(valid_attrs)
      assert event.name == "some name"
      assert event.url == "some url"
    end

    test "create_event/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Community.create_event(@invalid_attrs)
    end

    test "update_event/2 with valid data updates the event" do
      event = event_fixture()
      update_attrs = %{name: "some updated name", url: "some updated url"}

      assert {:ok, %Event{} = event} = Community.update_event(event, update_attrs)
      assert event.name == "some updated name"
      assert event.url == "some updated url"
    end

    test "update_event/2 with invalid data returns error changeset" do
      event = event_fixture()
      assert {:error, %Ecto.Changeset{}} = Community.update_event(event, @invalid_attrs)
      assert event == Community.get_event!(event.id)
    end

    test "delete_event/1 deletes the event" do
      event = event_fixture()
      assert {:ok, %Event{}} = Community.delete_event(event)
      assert_raise Ecto.NoResultsError, fn -> Community.get_event!(event.id) end
    end

    test "change_event/1 returns a event changeset" do
      event = event_fixture()
      assert %Ecto.Changeset{} = Community.change_event(event)
    end
  end

  describe "talks" do
    alias ElixirLangTokyo.Community.Talk

    import ElixirLangTokyo.CommunityFixtures

    @invalid_attrs %{alchemist_id: nil, slide: nil, title: nil}

    test "list_talks/0 returns all talks" do
      talk = talk_fixture()
      assert Community.list_talks() == [talk]
    end

    test "get_talk!/1 returns the talk with given id" do
      talk = talk_fixture()
      assert Community.get_talk!(talk.id) == talk
    end

    test "create_talk/1 with valid data creates a talk" do
      valid_attrs = %{alchemist_id: 42, slide: "some slide", title: "some title"}

      assert {:ok, %Talk{} = talk} = Community.create_talk(valid_attrs)
      assert talk.alchemist_id == 42
      assert talk.slide == "some slide"
      assert talk.title == "some title"
    end

    test "create_talk/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Community.create_talk(@invalid_attrs)
    end

    test "update_talk/2 with valid data updates the talk" do
      talk = talk_fixture()
      update_attrs = %{alchemist_id: 43, slide: "some updated slide", title: "some updated title"}

      assert {:ok, %Talk{} = talk} = Community.update_talk(talk, update_attrs)
      assert talk.alchemist_id == 43
      assert talk.slide == "some updated slide"
      assert talk.title == "some updated title"
    end

    test "update_talk/2 with invalid data returns error changeset" do
      talk = talk_fixture()
      assert {:error, %Ecto.Changeset{}} = Community.update_talk(talk, @invalid_attrs)
      assert talk == Community.get_talk!(talk.id)
    end

    test "delete_talk/1 deletes the talk" do
      talk = talk_fixture()
      assert {:ok, %Talk{}} = Community.delete_talk(talk)
      assert_raise Ecto.NoResultsError, fn -> Community.get_talk!(talk.id) end
    end

    test "change_talk/1 returns a talk changeset" do
      talk = talk_fixture()
      assert %Ecto.Changeset{} = Community.change_talk(talk)
    end
  end
end

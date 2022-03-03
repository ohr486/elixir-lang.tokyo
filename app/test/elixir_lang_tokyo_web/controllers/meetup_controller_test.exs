defmodule ElixirLangTokyoWeb.MeetupControllerTest do
  use ElixirLangTokyoWeb.ConnCase

  import ElixirLangTokyo.CommunityFixtures

  @create_attrs %{hashtag: "some hashtag", name: "some name", site: "some site"}
  @update_attrs %{hashtag: "some updated hashtag", name: "some updated name", site: "some updated site"}
  @invalid_attrs %{hashtag: nil, name: nil, site: nil}

  describe "index" do
    test "lists all meetups", %{conn: conn} do
      conn = get(conn, Routes.meetup_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Meetups"
    end
  end

  describe "new meetup" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.meetup_path(conn, :new))
      assert html_response(conn, 200) =~ "New Meetup"
    end
  end

  describe "create meetup" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.meetup_path(conn, :create), meetup: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.meetup_path(conn, :show, id)

      conn = get(conn, Routes.meetup_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Meetup"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.meetup_path(conn, :create), meetup: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Meetup"
    end
  end

  describe "edit meetup" do
    setup [:create_meetup]

    test "renders form for editing chosen meetup", %{conn: conn, meetup: meetup} do
      conn = get(conn, Routes.meetup_path(conn, :edit, meetup))
      assert html_response(conn, 200) =~ "Edit Meetup"
    end
  end

  describe "update meetup" do
    setup [:create_meetup]

    test "redirects when data is valid", %{conn: conn, meetup: meetup} do
      conn = put(conn, Routes.meetup_path(conn, :update, meetup), meetup: @update_attrs)
      assert redirected_to(conn) == Routes.meetup_path(conn, :show, meetup)

      conn = get(conn, Routes.meetup_path(conn, :show, meetup))
      assert html_response(conn, 200) =~ "some updated hashtag"
    end

    test "renders errors when data is invalid", %{conn: conn, meetup: meetup} do
      conn = put(conn, Routes.meetup_path(conn, :update, meetup), meetup: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Meetup"
    end
  end

  describe "delete meetup" do
    setup [:create_meetup]

    test "deletes chosen meetup", %{conn: conn, meetup: meetup} do
      conn = delete(conn, Routes.meetup_path(conn, :delete, meetup))
      assert redirected_to(conn) == Routes.meetup_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.meetup_path(conn, :show, meetup))
      end
    end
  end

  defp create_meetup(_) do
    meetup = meetup_fixture()
    %{meetup: meetup}
  end
end

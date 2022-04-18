defmodule ElixirLangTokyoWeb.AlchemistControllerTest do
  use ElixirLangTokyoWeb.ConnCase

  import ElixirLangTokyo.AlchemistFixtures

  @create_attrs %{github: "some github", name: "some name", twitter: "some twitter"}
  @update_attrs %{github: "some updated github", name: "some updated name", twitter: "some updated twitter"}
  @invalid_attrs %{github: nil, name: nil, twitter: nil}

  describe "index" do
    test "lists all alchemists", %{conn: conn} do
      conn = get(conn, Routes.alchemist_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Alchemists"
    end
  end

  describe "new alchemist" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.alchemist_path(conn, :new))
      assert html_response(conn, 200) =~ "New Alchemist"
    end
  end

  describe "create alchemist" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.alchemist_path(conn, :create), alchemist: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.alchemist_path(conn, :show, id)

      conn = get(conn, Routes.alchemist_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Alchemist"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.alchemist_path(conn, :create), alchemist: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Alchemist"
    end
  end

  describe "edit alchemist" do
    setup [:create_alchemist]

    test "renders form for editing chosen alchemist", %{conn: conn, alchemist: alchemist} do
      conn = get(conn, Routes.alchemist_path(conn, :edit, alchemist))
      assert html_response(conn, 200) =~ "Edit Alchemist"
    end
  end

  describe "update alchemist" do
    setup [:create_alchemist]

    test "redirects when data is valid", %{conn: conn, alchemist: alchemist} do
      conn = put(conn, Routes.alchemist_path(conn, :update, alchemist), alchemist: @update_attrs)
      assert redirected_to(conn) == Routes.alchemist_path(conn, :show, alchemist)

      conn = get(conn, Routes.alchemist_path(conn, :show, alchemist))
      assert html_response(conn, 200) =~ "some updated github"
    end

    test "renders errors when data is invalid", %{conn: conn, alchemist: alchemist} do
      conn = put(conn, Routes.alchemist_path(conn, :update, alchemist), alchemist: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Alchemist"
    end
  end

  describe "delete alchemist" do
    setup [:create_alchemist]

    test "deletes chosen alchemist", %{conn: conn, alchemist: alchemist} do
      conn = delete(conn, Routes.alchemist_path(conn, :delete, alchemist))
      assert redirected_to(conn) == Routes.alchemist_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.alchemist_path(conn, :show, alchemist))
      end
    end
  end

  defp create_alchemist(_) do
    alchemist = alchemist_fixture()
    %{alchemist: alchemist}
  end
end

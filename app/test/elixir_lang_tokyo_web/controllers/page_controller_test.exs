defmodule ElixirLangTokyoWeb.PageControllerTest do
  use ElixirLangTokyoWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "elixir-jp twitter-community"
  end
end

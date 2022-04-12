defmodule ElixirLangTokyoWeb.TalkController do
  use ElixirLangTokyoWeb, :controller

  alias ElixirLangTokyo.Community
  alias ElixirLangTokyo.Community.Talk

  def index(conn, _params) do
    talks = Community.list_talks()
    render(conn, "index.html", talks: talks)
  end

  def new(conn, _params) do
    changeset = Community.change_talk(%Talk{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"talk" => talk_params}) do
    case Community.create_talk(talk_params) do
      {:ok, talk} ->
        conn
        |> put_flash(:info, "Talk created successfully.")
        |> redirect(to: Routes.talk_path(conn, :show, talk))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    talk = Community.get_talk!(id)
    render(conn, "show.html", talk: talk)
  end

  def edit(conn, %{"id" => id}) do
    talk = Community.get_talk!(id)
    changeset = Community.change_talk(talk)
    render(conn, "edit.html", talk: talk, changeset: changeset)
  end

  def update(conn, %{"id" => id, "talk" => talk_params}) do
    talk = Community.get_talk!(id)

    case Community.update_talk(talk, talk_params) do
      {:ok, talk} ->
        conn
        |> put_flash(:info, "Talk updated successfully.")
        |> redirect(to: Routes.talk_path(conn, :show, talk))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", talk: talk, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    talk = Community.get_talk!(id)
    {:ok, _talk} = Community.delete_talk(talk)

    conn
    |> put_flash(:info, "Talk deleted successfully.")
    |> redirect(to: Routes.talk_path(conn, :index))
  end
end

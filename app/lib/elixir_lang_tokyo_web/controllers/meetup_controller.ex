defmodule ElixirLangTokyoWeb.MeetupController do
  use ElixirLangTokyoWeb, :controller

  alias ElixirLangTokyo.Community
  alias ElixirLangTokyo.Community.Meetup

  def index(conn, _params) do
    meetups = Community.list_meetups()
    render(conn, "index.html", meetups: meetups)
  end

  def new(conn, _params) do
    changeset = Community.change_meetup(%Meetup{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"meetup" => meetup_params}) do
    case Community.create_meetup(meetup_params) do
      {:ok, meetup} ->
        conn
        |> put_flash(:info, "Meetup created successfully.")
        |> redirect(to: Routes.meetup_path(conn, :show, meetup))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    meetup = Community.get_meetup!(id)
    render(conn, "show.html", meetup: meetup)
  end

  def edit(conn, %{"id" => id}) do
    meetup = Community.get_meetup!(id)
    changeset = Community.change_meetup(meetup)
    render(conn, "edit.html", meetup: meetup, changeset: changeset)
  end

  def update(conn, %{"id" => id, "meetup" => meetup_params}) do
    meetup = Community.get_meetup!(id)

    case Community.update_meetup(meetup, meetup_params) do
      {:ok, meetup} ->
        conn
        |> put_flash(:info, "Meetup updated successfully.")
        |> redirect(to: Routes.meetup_path(conn, :show, meetup))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", meetup: meetup, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    meetup = Community.get_meetup!(id)
    {:ok, _meetup} = Community.delete_meetup(meetup)

    conn
    |> put_flash(:info, "Meetup deleted successfully.")
    |> redirect(to: Routes.meetup_path(conn, :index))
  end
end

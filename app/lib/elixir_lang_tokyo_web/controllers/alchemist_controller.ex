defmodule ElixirLangTokyoWeb.AlchemistController do
  use ElixirLangTokyoWeb, :controller

  alias ElixirLangTokyo.Alchemist

  def index(conn, _params) do
    alchemists = Alchemist.list_alchemists()
    render(conn, "index.html", alchemists: alchemists)
  end

  def new(conn, _params) do
    changeset = Alchemist.change_alchemist(%Alchemist{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"alchemist" => alchemist_params}) do
    case Alchemist.create_alchemist(alchemist_params) do
      {:ok, alchemist} ->
        conn
        |> put_flash(:info, "Alchemist created successfully.")
        |> redirect(to: Routes.alchemist_path(conn, :show, alchemist))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    alchemist = Alchemist.get_alchemist!(id)
    render(conn, "show.html", alchemist: alchemist)
  end

  def edit(conn, %{"id" => id}) do
    alchemist = Alchemist.get_alchemist!(id)
    changeset = Alchemist.change_alchemist(alchemist)
    render(conn, "edit.html", alchemist: alchemist, changeset: changeset)
  end

  def update(conn, %{"id" => id, "alchemist" => alchemist_params}) do
    alchemist = Alchemist.get_alchemist!(id)

    case Alchemist.update_alchemist(alchemist, alchemist_params) do
      {:ok, alchemist} ->
        conn
        |> put_flash(:info, "Alchemist updated successfully.")
        |> redirect(to: Routes.alchemist_path(conn, :show, alchemist))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", alchemist: alchemist, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    alchemist = Alchemist.get_alchemist!(id)
    {:ok, _alchemist} = Alchemist.delete_alchemist(alchemist)

    conn
    |> put_flash(:info, "Alchemist deleted successfully.")
    |> redirect(to: Routes.alchemist_path(conn, :index))
  end
end

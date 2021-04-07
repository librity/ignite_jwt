defmodule RepoWeb.UsersController do
  use RepoWeb, :controller

  alias Repo.User
  alias RepoWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Repo.create_user(params) do
      conn
      |> put_status(:ok)
      |> render("create.json", user: user)
    end
  end
end

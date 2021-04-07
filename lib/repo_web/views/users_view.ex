defmodule RepoWeb.UsersView do
  use RepoWeb, :view

  def render("create.json", %{user: user}),
    do: %{message: "User created successfully", user: user}
end

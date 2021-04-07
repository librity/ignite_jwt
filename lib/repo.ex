defmodule Repo do
  @moduledoc """
  Repo keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  alias Repo.Users.Create, as: CreateUser

  defdelegate create_user(params), to: CreateUser, as: :call
end

defmodule PhoenixBase.Repo do
  @moduledoc """
  Handles making all queries for the app. If you find yourself
  missing an ActiveRecord feature, this is a good place to add it.

  For more information about Repo, see the Ecto documentation here:

  http://hexdocs.pm/ecto/Ecto.Repo.html
  """

  use Ecto.Repo, otp_app: :phoenix_base

  import Ecto.Query, only: [from: 2]

  @doc """
  Count the results for a given query.

  ## Examples

      Repo.count(User)
      # => 5

      Repo.count(from u in User, where: u.name == "Joe")
      # => 1
  """
  @spec count(Ecto.Queryable.t) :: integer
  def count(queryable) do
    one(from m in queryable, select: count(m.id))
  end

  @doc """
  Reloads a given model from the database. Useful in tests to check if
  model attributes have been changed.

  ## Example

      Repo.reload(%User{...})
      # => %User{...}
  """
  @spec reload(Ecto.Schema.t) :: Ecto.Schema.t
  def reload(model) do
    get(model.__struct__, model.id)
  end
end

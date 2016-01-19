defmodule PhoenixBase.PageController do
  @moduledoc """
  Controller responsible for rendering static pages.
  """

  use PhoenixBase.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

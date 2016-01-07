defmodule PhoenixBase.PageController do
  use PhoenixBase.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

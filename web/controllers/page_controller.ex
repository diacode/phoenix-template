defmodule PhoenixTemplate.PageController do
  use PhoenixTemplate.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

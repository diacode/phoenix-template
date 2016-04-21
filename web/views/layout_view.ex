defmodule PhoenixTemplate.LayoutView do
  use PhoenixTemplate.Web, :view

  def js_view_path(conn) do
    view_name = Phoenix.Naming.resource_name(view_module(conn))

    "#{view_name}/#{action_name(conn)}"
  end
end

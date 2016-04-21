defmodule PhoenixTemplate.LayoutView do
  use PhoenixTemplate.Web, :view

  def js_view_name(conn) do
    view_name = Phoenix.Naming.resource_name(view_module(conn))
    action_name = action_name(conn)

    "#{view_name}_#{action_name}"
    |> String.split("_")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join("")
  end
end

defmodule PhoenixTemplate.LayoutView do
  use PhoenixTemplate.Web, :view

  def js_view_name(conn) do
    view_name = Phoenix.Naming.resource_name(view_module(conn))
    action_name = action_name(conn)

    generate_name("#{action_name}_#{view_name}") <> "View"
  end

  defp generate_name(value) do
    value
    |> String.split("_")
    |> Enum.reverse
    |> List.delete_at(0)
    |> Enum.map(&String.capitalize/1)
    |> Enum.reverse
    |> Enum.join("")
  end
end

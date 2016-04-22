defmodule PhoenixTemplate.LayoutView do
  use PhoenixTemplate.Web, :view

  def js_view_name(conn) do
    controller_name = Phoenix.Naming.resource_name(controller_module(conn))
    action_name = action_name(conn)

    generate_name("#{controller_name}_#{action_name}_view")
  end

  defp generate_name(value) do
    value
    |> String.replace("_controller", "")
    |> String.split("_")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join("")
  end
end

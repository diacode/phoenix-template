defmodule PhoenixTemplate.LayoutView do
  use PhoenixTemplate.Web, :view

  def js_view_name(conn, view_template) do
    view = view_name(conn)
    template = template_name(view_template)

    generate_name("#{view}_#{template}")
  end

  defp view_name(conn) do
    conn
    |> view_module
    |> Phoenix.Naming.resource_name
    |> String.replace("_view", "")
  end

  defp template_name(template) when is_binary(template) do
    template
    |> String.split(".")
    |> template_name
  end
  defp template_name([name | _]), do: name

  defp generate_name(value) do
    value
    |> String.split("_")
    |> Enum.reverse
    |> List.insert_at(0, "view")
    |> Enum.map(&String.capitalize/1)
    |> Enum.reverse
    |> Enum.join("")
  end
end

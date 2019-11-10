defmodule PortfolioWeb.LayoutView do
  use PortfolioWeb, :view

  ###
  # Returns `"active"` when current path is `paths`
  ###
  def active_class(conn, paths) when is_list(paths) do
    current_path = "/" <> Enum.join(conn.path_info, "/")
    if current_path in paths do
      "active"
    else
      ""
    end
  end

  ###
  # Returns `"active"` when current path is the same as `path`
  ###
  def active_class(conn, path) do
    current_path = "/" <> Enum.join(conn.path_info, "/")
    if current_path == path do
      "active"
    else
      ""
    end
  end

end

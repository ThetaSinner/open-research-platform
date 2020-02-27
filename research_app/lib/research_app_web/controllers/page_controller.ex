defmodule ResearchAppWeb.PageController do
  use ResearchAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule ResearchAppWeb.StatusController do
  use ResearchAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def detail(conn, %{"item" => item}) do
    render(conn, "detail.html", item: item)
  end
end

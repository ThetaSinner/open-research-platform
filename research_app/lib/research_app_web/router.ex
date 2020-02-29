defmodule ResearchAppWeb.Router do
  use ResearchAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ResearchAppWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/status", StatusController, :index
    get "/status/:item", StatusController, :detail
  end

  # Other scopes may use custom stacks.
  # scope "/api", ResearchAppWeb do
  #   pipe_through :api
  # end
end

defmodule PortfolioWeb.Router do
  use PortfolioWeb, :router

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

  scope "/", PortfolioWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/certifications", PageController, :certifications
    get "/ng-pickaday", PageController, :ngpickaday
    get "/resume", PageController, :resume
    get "/sos", PageController, :sos
    get "/contact", PageController, :contact
    get "/wr-download", PageController, :wr_download
    get "/game-jam", PageController, :game_jam
    get "/dynogang", PageController, :dynogang
    get "/jiralogs", PageController, :jiralogs
    post "/send", PageController, :send
  end

  # Other scopes may use custom stacks.
  # scope "/api", PortfolioWeb do
  #   pipe_through :api
  # end
end

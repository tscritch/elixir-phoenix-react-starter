defmodule TryReactWeb.Router do
  use TryReactWeb, :router

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

  scope "/", TryReactWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api", TryReactWeb do
    pipe_through :api

    get "/bobtheblob", ApiController, :index
  end
end

defmodule CongressionalGoblin.Router do
  use CongressionalGoblin.Web, :router

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

  scope "/", CongressionalGoblin do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  resources "/users", CongressionalGoblin.UserController, except: [:new, :edit]

  # Other scopes may use custom stacks.
  scope "/api", CongressionalGoblin do
    pipe_through :api

    post "/get-representatives", AddressController, :get_representatives
  end
end

defmodule Karacagida.Router do
  use Karacagida.Web, :router

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

  scope "/", Karacagida do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :home
    get "/aboutus", PageController, :aboutus
    get "/certificates", PageController, :certificates
    get "/contactus", PageController, :contact
    get "/production", PageController, :production
    get "/products", PageController, :products
    get "/socialcontributions", PageController, :socialcont
  end

  # Other scopes may use custom stacks.
  # scope "/api", Karacagida do
  #   pipe_through :api
  # end
end

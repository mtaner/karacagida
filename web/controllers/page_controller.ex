defmodule Karacagida.PageController do
  use Karacagida.Web, :controller

  def home(conn, _params) do
    render conn, "home.html"
  end

  def aboutus(conn, _params) do
    render conn, "aboutus.html"
  end

  def certificates(conn, _params) do
    render conn, "certificates.html"
  end

  def contact(conn, _params) do
    render conn, "contact.html"
  end

  def production(conn, _params) do
    render conn, "production.html"
  end

  def products(conn, _params) do
    render conn, "products.html"
  end

  def socialcont(conn, _params) do
    render conn, "socialcont.html"
  end
end

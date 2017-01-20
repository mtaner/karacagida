defmodule Karacagida.PageController do
  use Karacagida.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

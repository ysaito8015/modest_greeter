defmodule ModestGreeterWeb.TopController do
  use ModestGreeterWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

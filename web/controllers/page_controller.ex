defmodule FP17.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end

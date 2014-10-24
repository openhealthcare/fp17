defmodule FP17.PageController do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

  def new_step1(conn, _params) do
    render conn, "new_one"
  end

  def new_step2(conn, _params) do
    render conn, "new_two"
  end

  def new_step3(conn, _params) do
    render conn, "new_three"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end

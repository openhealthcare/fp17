defmodule FP17.Api01Controller do
  use Phoenix.Controller

  def index(conn, _params) do
    render conn, "index"
  end

end

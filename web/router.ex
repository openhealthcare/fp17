defmodule FP17.Router do
  use Phoenix.Router

  get "/", FP17.PageController, :index, as: :pages

  get "/new", FP17.PageController, :new, as: :pages
  post "/new", FP17.PageController, :new, as: :pages

end

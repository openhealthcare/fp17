defmodule FP17.Router do
  use Phoenix.Router

  get "/", FP17.PageController, :index, as: :pages

  get "/new/one", FP17.PageController, :new_step1, as: :pages
  post "/new/one", FP17.PageController, :new_step1, as: :pages

  get "/new/two", FP17.PageController, :new_step2, as: :pages
  post "/new/two", FP17.PageController, :new_step2, as: :pages

  get "/new/three", FP17.PageController, :new_step3, as: :pages
  post "/new/three", FP17.PageController, :new_step3, as: :pages

end

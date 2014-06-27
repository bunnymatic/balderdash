Balderdash::Engine.routes.draw do
  root to: "main#index"

  get "/:action", to: "widgets#action"
  get "/balderdash/:action", to: "widgets#action"
end

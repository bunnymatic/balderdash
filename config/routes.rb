Balderdash::Engine.routes.draw do
  root to: "main#index"

  get "/:action", controller: 'widgets'

end

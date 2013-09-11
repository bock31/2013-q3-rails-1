App::Application.routes.draw do
  get "/"               => "houses#root"
  get "/houses"         => "houses#index"
  get "/houses/:id"     => "houses#show"

  get  "/sessions"      => "sessions#new"
  post "/sessions"      => "sessions#create"
  get  "/sessions/:id"  => "sessions#destroy"

  get     "/admin_houses"            => "admin_houses#index"
  get     "/admin_houses/new"        => "admin_houses#new"
  post    "/admin_houses"            => "admin_houses#create"
  get     "/admin_houses/:id/edit"   => "admin_houses#edit"
  put     "/admin_houses/:id"        => "admin_houses#update"
  delete  "/admin_houses/:id"        => "admin_houses#destroy"
end

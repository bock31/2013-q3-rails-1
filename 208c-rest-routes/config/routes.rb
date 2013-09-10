App::Application.routes.draw do
  get  "/"               => "ads#root"

  get  "/ads"            => "ads#index"

  get  "/ads/new"        => "ads#new_ad"
  post "/ads/new"        => "ads#new_ad_post"

  get  "/ads/:id"        => "ads#show_ad"

  get  "/ads/:id/edit"   => "ads#edit_ad"
  put  "/ads/:id"        => "ads#edit_ad_post"

  delete  "/ads/:id"     => "ads#destroy_ad"
end

App::Application.routes.draw do
  get  "/"            => "main#root"
  get  "/place_order" => "main#place_order"
  post "/place_order" => "main#place_order_post"
  
  get  "/login"   => "admin#login"
  post "/login"   => "admin#login_post"
  get  "/admin"   => "admin#home"
  get  "/dishes"  => "admin#dishes"
  get  "/orders"  => "admin#orders"
  get  "/logout"  => "admin#logout"
end

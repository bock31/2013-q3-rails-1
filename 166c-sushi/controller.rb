require '../dvc-sinatra.rb'

get "/" do
  halt erb(:main)
end

get "/place_order" do
  @dishes = Dish.order(:id).all
  halt erb(:place_order)
end

post "/place_order" do
  if params[:commit] == "Place order"
    new_order              = Order.new
    new_order.total_price  = 0.00 
    new_order.table_number = params[:table_number]  
    new_order.save!

    Dish.all.each do |dish|
      quantity = params["quantity_for_dish_#{dish.id}"]
      if quantity != ""
        new_line_item            = LineItem.new
        new_line_item.dish_id    = dish.id
        new_line_item.quantity   = quantity
        new_line_item.line_price = dish.price * quantity.to_i
        new_line_item.order_id   = new_order.id
        new_line_item.save!
        
        new_order.total_price = new_order.total_price + new_line_item.line_price
      end
    end
    new_order.save!
  end

  redirect "/"
end

get "/orders" do
  @orders = Order.order(:id).all
  halt erb(:orders)
end

get "/dishes" do
  @dishes = Dish.order(:id).all
  halt erb(:dishes)
end

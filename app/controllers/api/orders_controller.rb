class Api::OrdersController < ApplicationController
  def create
    menu_item = MenuItem.find(params['menu_item_id'])
    order = current_user.orders.create
    order.order_items.create(menu_item_id: menu_item.id)
    if order.persisted?
      binding.pry
      render json:{ 
        message: 'This item was added to your order!'
        order: { 
          id: order.id
         }
       }

    else
        binding.pry
    end
  end
end

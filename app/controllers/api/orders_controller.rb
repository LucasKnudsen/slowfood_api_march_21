class Api::OrdersController < ApplicationController
  before_action :authenticate_user! 

  def create
    menu_item = MenuItem.find(params['menu_item_id'])
    order = current_user.orders.create
    order.order_items.create(menu_item_id: menu_item.id)
    if order.persisted?
      render json:{ 
        message: 'This item was added to your order!',
        order: { 
          id: order.id,
          items: order.menu_items
        }
        }, status: 201
    else
      render json: { message: "Something went wrong! "}, status: 422
    end
  end
  def update
    order = Order.find(params['id'])
    menu_item = MenuItem.find(params['menu_item_id']) 
    new_item = order.order_items.create(menu_item_id: menu_item.id)
    if new_item.persisted?
      render json: { message: 'This item was added to your order!',
        order: { 
          id: order.id,
          items: order.menu_items
         }  
      }
      
    else
      render json: { message: "Something went wrong! "}, status: 422
    end
  end
end
 
class Api::OrdersController < ApplicationController
  before_action :authenticate_user! 

  def create
    menu_item = MenuItem.find(params['menu_item_id'])
    order = current_user.orders.create
    order.order_items.create(menu_item_id: menu_item.id)
    order_response(order, order, 201)
  end
  def update
    order = Order.find(params['id'])
    menu_item = MenuItem.find(params['menu_item_id']) 
    new_item = order.order_items.create(menu_item_id: menu_item.id)
    order_response(new_item, order, 200)
  end

  private

  def order_response(resource, order, status)
    if resource.persisted?
        render json: { message: 'This item was added to your order!',
          order: { 
            id: order.id,
            items: order.menu_items
           }  
        },status: status
      else
        render json: { message: "Unauthorised action"}, status: 401
      end
  end
end
 
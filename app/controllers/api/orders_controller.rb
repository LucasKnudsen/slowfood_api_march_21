class Api::OrdersController < ApplicationController
  def create
    menu_item = MenuItem.find(params['menu_item_id'])
    order = current_user.orders.create
  end
end

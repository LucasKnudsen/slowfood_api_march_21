class AddPriceToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :price, :integer
  end
end

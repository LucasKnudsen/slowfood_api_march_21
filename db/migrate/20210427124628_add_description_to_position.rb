class AddDescriptionToPosition < ActiveRecord::Migration[6.0]
  def change
    add_column :positions, :description, :string
  end
end

class RenamePositionsToMenuItems < ActiveRecord::Migration[6.0]
  def change
    rename_table :positions, :menu_items
  end
end

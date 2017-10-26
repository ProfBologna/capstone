class AddColumnToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :description, :string
    add_column :item_statuses, :activate, :boolean
  end
end

class AddOrderToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :order_id, :reference
  end
end

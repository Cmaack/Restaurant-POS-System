class AddColumnFired < ActiveRecord::Migration
  def change
    add_column :order_tickets, :fired, :integer
  end
end

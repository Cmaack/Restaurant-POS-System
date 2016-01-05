class AddNotesToOrderTickets < ActiveRecord::Migration
  def change
    add_column :order_tickets, :notes, :text
  end
end

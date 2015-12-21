class Party < ActiveRecord::Base
  has_many :order_tickets
  has_many :menu_items, through: :order_tickets

def checkout
  balance = 0
  self.order_tickets.each do |order_ticket|
    balance += order_ticket.menu_item.price
  end
  balance
end
  def tip1

    (self.checkout*(1.15)).round(2)
  end
  def tip2

    (self.checkout*(1.20)).round(2)
  end
  def tip3
    (self.checkout*(1.25)).round(2)
  end

end

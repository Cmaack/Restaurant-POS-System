class MenuItem < ActiveRecord::Base
  has_many :order_tickets, dependent: :destroy
  has_many :parties, through: :order_tickets
end

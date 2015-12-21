class OrderTicketsController < ApplicationController
  def index

  @order_tickets = OrderTicket.all
  @order_ticket = OrderTicket.new
  #parties
  @parties = Party.all
  @party = Party.new
  #menu_items
  @menu_items = MenuItem.all
  @menu_item = MenuItem.new

end

def create
  OrderTicket.create(order_tickets_params)
  redirect_to order_tickets_path
end
def show

  @order_tickets = OrderTicket.where(:fired => nil)
  @order_ticket = OrderTicket.new
  #parties
  @parties = Party.all
  @party = Party.new
  #menu_items
  @menu_items = MenuItem.all
  @menu_item = MenuItem.new
end
def destroy
  order_ticket =  OrderTicket.find(params[:id])
  order_ticket.destroy
  redirect_to order_tickets_path
end

private

def order_tickets_params
  params.require(:order_ticket).permit(:party_id, :menu_item_id)
end

end

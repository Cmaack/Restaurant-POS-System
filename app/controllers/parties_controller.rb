class PartiesController < ApplicationController
  def index
    @parties = Party.all
    @party = Party.new
  end
  #party POST /menu_items    route - party#create
  def create
    Party.create(party_params)
    redirect_to order_tickets_path
  end
  #menu_items DELETE /menu_items  route - menu_items#destroy
  def destroy
   party =  Party.find(params[:id])
    party.destroy
    redirect_to order_tickets_path
  end

  #menu_item params set here
  private

  def party_params
    params.require(:party).permit(:name, :size)
  end
end

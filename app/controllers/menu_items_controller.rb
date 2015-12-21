class MenuItemsController < ApplicationController

  before_action :authenticate!

  #menu_items GET /menu_items     route - menu_items#index
  def index
    @menu_items = MenuItem.all
    @menu_item = MenuItem.new
  end
  #menu_items POST /menu_items    route - menu_items#create
  def create
    MenuItem.create(menu_item_params)
    redirect_to menu_items_path
  end
  #menu_items DELETE /menu_items  route - menu_items#destroy
  def destroy
    menu_item =MenuItem.find(params[:id])
    menu_item.destroy
    redirect_to menu_items_path
  end

  #menu_item params set here
  private

  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price, :course)
  end

end

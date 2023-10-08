class ItemsController < ApplicationController

  def index
    if params[:latest]
      @items = Item.latest
    elsif params[:old]
      @items = Item.old
    elsif params[:deadline]
      @items = Item.deadline
    else
      @items = Item.all
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end

  private
  def item_params
    params.require(:item).permit(:name, :number, :deadline, :category_id)
  end

end

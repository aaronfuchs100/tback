class ItemsController < ApplicationController


  def index

    @users = User.all
    @items = Item.all

  end

  def new
    @item = Item.new
  end

  def create

    @item = Item.create(params[:item])
    redirect_to root_path

  end

  def show


  end

  def update
  end

  def destoy
  end


end
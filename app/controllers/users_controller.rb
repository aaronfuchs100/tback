class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    redirect_to new_user_path
  end

  def show
    user_id = params[:id]
    @user = User.find(user_id)
    @item = Item.new
    @items = Item.all
  end

  def edit
     @user = User.find(params[:id])
  end

  def update
  end

  def destoy
    @user = User.find(params[:id])
    @user.destroy
  end

  def search
    query = params[:query]
    if query.present?
      @users = User.text_search(query)
    else
      @users = User.all
    end
  end

  def register

  end

end
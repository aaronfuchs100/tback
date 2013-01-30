class EventsController < ApplicationController

  autocomplete :user, :phone, :full => true, :extra_data => [:phone]
  def index
    binding.pry
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.create(params[:event])
    redirect_to event_path(@event.id)
  end
  def show
    event_id = params[:id]
    @event = Event.find(event_id)
    @user = User.new
  end
  def rewards
    item = params[:item]
    value = params[:value]
    quantity = params[:quantity]
    event_id = params[:event_id]
    Reward.create(:item => item, :value => value, :quantity => quantity, :event_id => event_id)
    redirect_to :action => "show", :id => event_id
  end
  def recyclables
    item = params[:item]
    value = params[:value]
    event_id = params[:event_id]
    Recyclable.create(:item => item, :value => value, :event_id => event_id)
    redirect_to :action => "show", :id => event_id
  end
  def newuser
    @user = User.create(params[:user])
    event_id = params[:event_id]
    redirect_to :action => "show", :id => event_id
  end
  def recycle
    event_id = params[:event_id]
    @u = User.find_by_phone(params[:user])
    rvalue = Recyclable.find(params[:recyclable][:id].to_i).value
    q = params[:quantity][:number].to_i
    val = rvalue * q
    @u.balance += val
    @u.save
    redirect_to :action => "show", :id => event_id, :u => @u.id
  end
  def redeem
    event_id = params[:event_id]
    @u = User.find(params[:user_id])
    @r = Reward.find(params[:r_id])
    @u.balance -= @r.value
    @u.save
    @r.quantity -= 1
    @r.save
    redirect_to :action => "show", :id => event_id, :u => @u.id
  end
end
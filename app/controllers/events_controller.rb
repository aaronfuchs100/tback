class EventsController < ApplicationController
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
    binding.pry
    redirect_to :action => "show", :id => event_id
  end
end
class RoomsController < ApplicationController
  def index
    @rooms = Room.all.order(:id)
  end

  def new
    @rooms = Room.new
  end

=begin  def create
    @rooms = Room.new(message: params[:id])
    if @rooms.save
      flash[:notice] = '部屋の作成をしました'
      redirect_to root_path
    else
      render 'new'
    end
  end
=end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end
end

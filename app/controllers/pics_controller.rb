class PicsController < ApplicationController
  respond_to :html

  def index
    @pics = Pic.order("created_at desc")
    respond_with @pics
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to action: 'index'
    else
      render action: 'new', alert: 'User could not be created'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def pic_params
       params.require(:pic).permit(:image, :location)
  end
end

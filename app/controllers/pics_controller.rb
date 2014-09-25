class PicsController < ApplicationController
  respond_to :html

  def index
    # @pics = Pic.order("created_at desc")
    @pics = Pic.all.sample(9)

    respond_with @pics
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to action: 'share'
    else
      render action: 'new', alert: 'Pic could not be share'
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

  def new_pictures
    # @new_pics = Pic.where(:created_at => (Time.now - 1.minute)..Time.now)
    @new_pics = Pic.all.sample(9)
    # @all_pics = Pic.order("created_at desc")
    p @new_pics.to_json

    render :json => @new_pics.to_json(:only => [:location], :methods => [:image_url])
  end

  def share
    @pic = Pic.order("created_at desc").first
  end

  private
  def pic_params
       params.require(:pic).permit(:image, :location)
  end
end

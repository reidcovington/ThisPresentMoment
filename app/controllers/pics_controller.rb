class PicsController < ApplicationController
  respond_to :html

  def index
    @pics = Pic.order("created_at desc")
    respond_with @pics
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

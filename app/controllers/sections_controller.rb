class SectionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
  end

  def index
  end

  def show
    @header = "header-img"
    @graphics = Section.find(params[:id]).graphics.shuffle
  end

  def destroy
  end
end

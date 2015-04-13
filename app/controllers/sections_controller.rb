class SectionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
    @section = Section.find(params[:id])
    @graphics = Section.find(params[:id]).graphics.order('position')
  end

  def update
  end

  def index
  end

  def show
    @header = "header-img"
    @graphics = Section.find(params[:id]).graphics.order('position')
  end

  def destroy
  end

  def shuffle
    section = Section.find(params[:section_id])
    Graphic.shuffle(section.graphics)
    redirect_to edit_section_path(section)
  end

end

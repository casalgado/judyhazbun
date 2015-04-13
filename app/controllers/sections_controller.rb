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
    section = Section.find(params[:id])
    if params[:section][:swap_1].present? && params[:section][:swap_2].present?
      graphic1 = section.graphics.where(position: params[:section][:swap_1]).first
      graphic2 = section.graphics.where(position: params[:section][:swap_2]).first
      Graphic.swap(graphic1, graphic2)
    end
    redirect_to edit_section_path(section)
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

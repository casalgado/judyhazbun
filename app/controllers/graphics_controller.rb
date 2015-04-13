class GraphicsController < ApplicationController
  
  def new
    @graphic = Graphic.new
    @section_id = params[:section_id]
  end

  def create
    @crop_size = params[:graphic][:crop_size]
    @graphic = Graphic.new(graphic_params)
    if @graphic.save
      if params[:graphic][:visual].present?
        render 'crop'
      else
        redirect_to edit_section_path(@graphic.section)
      end
    else
      render 'new'
    end
  end

  def show
    @graphic = Graphic.find(params[:id])
  end

  def index
  end

  def edit
    @graphic = Graphic.find(params[:id])
    @section_id = params[:section_id]
  end

  def update
    @crop_size = params[:graphic][:crop_size]
    @graphic = Graphic.find(params[:id])
    if @graphic.update(graphic_params)
      if params[:graphic][:visual].present?
        render 'crop'
      else
        redirect_to edit_section_path(id: @graphic.section.id)
      end
    else
      render 'edit'
    end
  end

  def crop
  end

  def destroy
  end

  private

  def graphic_params
    params.require(:graphic).permit(:visual_crop_x, 
                                    :visual_crop_y, 
                                    :visual_crop_w, 
                                    :visual_crop_h, 
                                    :image, 
                                    :name, 
                                    :description, 
                                    :section_id, 
                                    :visual, 
                                    :crop_size)
  end

end

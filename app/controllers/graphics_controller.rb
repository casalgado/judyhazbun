class GraphicsController < ApplicationController
  
  def new
    @graphic = Graphic.new
  end

  def create
    @graphic = Graphic.new(graphic_params)
    if @graphic.save
      if params[:graphic][:visual].present?
        render 'crop'
      else
        render 'show'
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
  end

  def update
    @graphic = Graphic.find(params[:id])
    if @graphic.update(graphic_params)
      if params[:graphic][:visual].present?
        render 'crop'
      else
        render 'show'
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
    params.require(:graphic).permit(:visual_crop_x, :visual_crop_y, :visual_crop_w, :visual_crop_h, :image, :name, :description, :section_id, :visual)
  end

end

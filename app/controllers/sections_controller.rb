class SectionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def index
  end

  def show
    @header = "header-img"
    @graphics = Section.first.graphics.shuffle
  end

  def destroy
  end
end

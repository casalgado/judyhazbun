class PagesController < ApplicationController

  def boutique
    Dir.chdir("#{Rails.root}/app/assets/images/boutique/content/grid")
  	filenames    = Dir.glob("*.png")
  	@image_names = filenames.map { |x| "boutique/content/grid/" + x }
  end

  def haz
  	Dir.chdir("#{Rails.root}/app/assets/images/haz/content/grid")
    filenames    = Dir.glob("*.png")
    @image_names = filenames.map { |x| "haz/content/grid/" + x }
  	
  end

  def novias
  end

  def jqmp
  end

  def modal
    debugger
  end

  def judy
  end

  def index
  end

  def home
  end

end

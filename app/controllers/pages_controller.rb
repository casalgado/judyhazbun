class PagesController < ApplicationController
  
  def home
  end

  def boutique
    Dir.chdir("#{Rails.root}/app/assets/images/boutique/content")
  	filenames    = Dir.glob("*.png")
  	@image_names = filenames.map { |x| "boutique/content/" + x }
  end


  def haz
  	Dir.chdir("#{Rails.root}/app/assets/images/haz/content")
    filenames    = Dir.glob("*.png")
    @image_names = filenames.map { |x| "haz/content/" + x }
  	render 'boutique'
  end

  def index
  end

end

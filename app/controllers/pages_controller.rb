class PagesController < ApplicationController
  
  def home
  end

  def boutique
  	filenames    = Dir.entries("#{Rails.root}/app/assets/images/boutique/content")
  	@image_names = filenames[3..-1].map { |x| "boutique/content/" + x }
  end


  def haz
  	filenames    = Dir.entries("#{Rails.root}/app/assets/images/haz/content")
  	@image_names = filenames[3..-1].map { |x| "haz/content/" + x }
  	render 'boutique'
  end

  def index
  end

end

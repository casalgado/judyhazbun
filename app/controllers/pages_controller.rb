class PagesController < ApplicationController

  def boutique
    Dir.chdir("#{Rails.root}/app/assets/images/boutique/content/grid")
  	filenames    = Dir.glob("*.png")
    @image_left  = "hero-template-01.png"
    @image_right = "hero-template-02.png"
  	@image_names = filenames.map { |x| "boutique/content/grid/" + x }
  end

  def coleccionh
    section      = Section.find(1)
    @graphics    = section.graphics
    @image_left  = "hero-template-01.png"
    @image_right = "hero-template-02.png"
    render "sections/show"
  end

  def judyhazbun
    section      = Section.find(2)
    @graphics    = section.graphics
    @image_left  = ""
    @image_right = ""
    render "sections/show"
  end

  def haz
    section      = Section.find(3)
    @graphics    = section.graphics
    @image_left  = "hero-template-03.png"
    @image_right = "hero-template-04.png"
    render "sections/show"
  end

  def novias
    section   = Section.find(4)
    @graphics = section.graphics
    render "sections/show"
  end

  def jqmp
  end

  def modal
  end

  def judy
  end

  def index
  end

  def home
  end

end

class PagesController < ApplicationController

  def coleccionh
    section      = Section.find(1)
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-01.png"
    @image_right = "hero-template-02.png"
    render "sections/show"
  end

  def judyhazbun
    section      = Section.find(2)
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-05.png"
    @image_right = "hero-template-06.png"
    render "sections/show"
  end

  def haz
    section      = Section.find(3)
    @cities      = true
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-03.png"
    @image_right = "hero-template-04.png"
    render "sections/show"
  end

  def novias
    section   = Section.find(4)
    @graphics = section.graphics.order('position')
    render "sections/show"
  end

  def lucesdenegro
    section      = Section.find(5)
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-07.png"
    @image_right = "hero-template-08.png"
    render "sections/show"
  end

  def zanzibar
    section      = Section.find(7)
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-09.png"
    @image_right = "hero-template-10.png"
    render "sections/show"
  end

  def blancoynegro
    section      = Section.find(8)
    @graphics    = section.graphics.order('position')
    @image_left  = ""
    @image_right = ""
    render "sections/show"
  end

  def pueblodemujeres
    section      = Section.find(9)
    @graphics    = section.graphics.order('position')
    @image_left  = "hero-template-11.png"
    @image_right = "hero-template-12.png"
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

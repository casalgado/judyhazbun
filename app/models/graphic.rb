class Graphic < ActiveRecord::Base

	# Associations

	belongs_to :section

	# Virtual Attributes

	attr_accessor :crop_size

	# Image Uploader

	mount_uploader :visual, VisualUploader
	crop_uploaded :visual

	# Callbacks

	after_create :set_position

	# Methods

  def s3_credentials
    {:bucket => ENV["S3_BUCKET_NAME"], :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

  def self.shuffle(array)
  	new_positions = (1..(array.count)).to_a.shuffle
  	array.each_with_index do |graphic, index|
  		graphic.position = new_positions[index]
  		graphic.save
  	end
  end

  def self.swap(graphic1, graphic2)
    position1 = graphic1.position
    graphic1.position = graphic2.position
    graphic2.position = position1
    graphic1.save
    graphic2.save
  end


  private

  def set_position
  	self.position = self.id
  end

end

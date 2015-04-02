class Graphic < ActiveRecord::Base

	belongs_to :section

	mount_uploader :visual, VisualUploader
	crop_uploaded :visual

	# has_attached_file :image, 
	# 									:styles => { :large => "568x819>", :medium => "300x629>", :small => "300x300>" }, 
	# 									:storage => :s3,
	# 									:s3_host_name => "s3-us-west-2.amazonaws.com",
  #                   :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

	# crop_attached_file :image

	# validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
                    

  def s3_credentials
    {:bucket => ENV["S3_BUCKET_NAME"], :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

end

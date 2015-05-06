class Restaurant < ActiveRecord::Base
	has_attached_file :image, 
    :styles          => {:medium => "300x300>", :thumb => "100x100>"}, 
    :default_url     => "missing.png",
    :convert_options => { :all => '-background white -flatten +matte' }
    #:styles => { :medium => "300x300", :thumb => "100x100>" }, :default_url => "missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end





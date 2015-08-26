class Restaurant < ActiveRecord::Base
	has_attached_file :image, 
    :styles          => {:medium => "300x300>", :thumb => "100x100>"}, 
    :default_url     => "none",
    :convert_options => { :all => '-background white -flatten +matte' }
    
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end





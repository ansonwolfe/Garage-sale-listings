class Asset < ActiveRecord::Base

	belongs_to :product
	has_attached_file :asset, :styles => { :thumb => "100x100#>", 
  										   :small => "300x300>",
  										   :large => "1000x1000>" },
  							:url  => "/assets/products/:id/:style/:basename.:extension",
			                :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :asset
	validates_attachment_size :asset, :less_than => 5.megabytes
	validates_attachment_content_type :asset, :content_type => ['image/jpeg', 'image/png']	
			   


  attr_accessible :asset, :assets_attributes, :asset_content_type, :asset_file_name, :asset_file_size, :asset_updated_at, :product_id
end

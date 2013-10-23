class Product < ActiveRecord::Base
  belongs_to :category
  has_many :assets
  has_many :comments, :dependent => :destroy
  # accepts_nested_attributes_for :photo, :allow_destroy => true

  validates :category, :name, :pricing, :description, :photo, :presence => true


	has_attached_file :photo, :styles => { :thumb => "100x100#>", 
  										   :small => "300x300>",
  										   :large => "1000x1000>"
  										 },
	                  :url  => "/assets/products/:id/:style/:basename.:extension",
	                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

	validates_attachment_presence :photo
	validates_attachment_size :photo, :less_than => 5.megabytes
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  attr_accessible :description, :name, :pricing, :category_id, :asset, :assets_attributes, :photo


end
